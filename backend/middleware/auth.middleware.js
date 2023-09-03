const cacheUtil = require('../utils/cache.util');
const jwtUtil = require('../utils/jwt.util');

module.exports = async (req, res, next) => {
    let token = req.headers.authorization;
    if (token && token.startsWith('Bearer ')) {
        token = token.slice(7, token.length);
    }
    if (req.method == "POST" && req.url == "/deal/find") {
        if ( req.body.vip && req.body.vip > 0 ) {
            if (token) {
                try {
                    token = token.trim();
                    /* ---------------------- Check For Blacklisted Tokens ---------------------- */
                    const isBlackListed = await cacheUtil.get(token);
                    if (isBlackListed) {
                        return res.status(401).json({ message: 'Unauthorized' });
                    }
                    const decoded = await jwtUtil.verifyToken(token);
                    req.user = decoded;
                    req.token = token;
                    if ( req.user.role != "vip" ) res.status(401).json({ message: 'Unauthorized' });
                    else next();
                } catch (error) {
                    return res.status(401).json({ message: 'Unauthorized' });
                }
            } else {
                return res.status(400).json({ message: 'You are not allowed to get VIP bargains' })
            }
        } else {
            next() ;
        }
    } else {

        if (token) {
            try {
                token = token.trim();
                /* ---------------------- Check For Blacklisted Tokens ---------------------- */
                const isBlackListed = await cacheUtil.get(token);
                if (isBlackListed) {
                    return res.status(401).json({ message: 'Unauthorized' });
                }

                const decoded = await jwtUtil.verifyToken(token);
                req.user = decoded;
                if (req.method == "POST")
                    req.body.user_id = req.user.id;
                req.token = token;
                next();
            } catch (error) {
                return res.status(401).json({ message: 'Unauthorized' });
            }
        } else {
            return res.status(400).json({ message: 'Authorization header is missing.' })
        }
    }
}