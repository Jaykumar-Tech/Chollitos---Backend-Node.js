const cacheUtil = require('../utils/cache.util');
const jwtUtil = require('../utils/jwt.util');

const getUserFromToken = async (token) => {
    try {
        token = token.trim();
        /* ---------------------- Check For Blacklisted Tokens ---------------------- */
        const isBlackListed = await cacheUtil.get(token);
        if (isBlackListed) {
            return null;
        }
        const decoded = await jwtUtil.verifyToken(token);
        return decoded;
    } catch (error) {
        return null;
    }
}

const AuthGuard = async (req, res, next) => {
    console.log(req.method, req.originalUrl);
    let token = req.headers.authorization;
    if (token && token.startsWith('Bearer ')) {
        token = token.slice(7, token.length);
    }
    if (req.method == "POST" && req.originalUrl == "/api/deal/find") {
        if (req.body.vip && req.body.vip > 0) {
            if (token) {
                try {
                    req.user = await getUserFromToken(token);
                    if (req.user.role != "customer" && req.user.role !='admin') res.status(401).json({ message: 'Unauthorized' });
                    else next();
                } catch (error) {
                    return res.status(401).json({ message: 'Unauthorized' });
                }
            } else {
                return res.status(400).json({ message: 'Authorization header is missing.' })
            }
        } else {
            next();
        }
    } else if (req.method == "GET" && req.originalUrl.startsWith("/api/deal/get/")) {
        try {
            req.user = await getUserFromToken(token);
            next();
        } catch (error) {
            next();
        }
    } else {
        if (token) {
            try {
                req.user = await getUserFromToken(token);
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

const AdminGuard = async (req, res, next) => {
    let token = req.headers.authorization;
    if (token && token.startsWith('Bearer ')) {
        token = token.slice(7, token.length);
    }
    if (token) {
        try {
            req.user = await getUserFromToken(token);
            if (req.user.role != "admin")
                return res.status(401).json({ message: 'You are not admin' });
            req.token = token;
            next();
        } catch (error) {
            return res.status(401).json({ message: 'Unauthorized' });
        }
    } else {
        return res.status(400).json({ message: 'Authorization header is missing.' })
    }
}

module.exports = {
    AdminGuard,
    AuthGuard
}