const jwtConfig = require('../config/jwt.config');
const mailConfig = require("../config/server.mail");
const bcryptUtil = require('../utils/bcrypt.util');
const jwtUtil = require('../utils/jwt.util');
const nodemailer = require("nodemailer");
const moment = require("moment")
const UserModel = require("../models/user.model");
const urlConfig = require("../config/url.config")

const { initializeApp } = require('firebase-admin/app');
var admin = require("firebase-admin");
var serviceAccount = require("../chollo-es-service-account.json");
var defaultApp = admin.initializeApp({
    credential: admin.credential.cert(serviceAccount)
});

const sendCode = async (email, code) => {
    return new Promise(async (resolve, reject) => {
        const transporter = nodemailer.createTransport({
            service: "hotmail",
            auth: {
              user: "chollitos@outlook.com",
              pass: "Chollo123",
            },
          });
          
          // Generate a random verification code
          const verificationCode = "Hello";
          
          // Compose the email
          const mailOptions = {
            from: "chollitos@outlook.com",
            to: email,
            subject: "Verification Code",
            text:   `Your verification code is ${code}`,
          };
          
          // Send the email
          transporter.sendMail(mailOptions, function (error, info) {
            if (error) {
              reject(error);
            } else {
              resolve({
                message: "success"
              })
            }
          });
    })
}

exports.exist = async (req, res) => {
    try {
        try {
            var user = await UserModel.findByEmail(req.body.email);
            if (user.status) {
                return res.status(400).json({
                    message: 'Email already exists.'
                });
            } else {
                await UserModel.remove(user.id, (err, response) => { });
            }
        } catch (error) { }

        const userData = {
            username: "temp",
            email: req.body.email,
            password: "temp"
        }
        await UserModel.create(userData);
        var code = bcryptUtil.genCode();

        await sendCode(req.body.email, code);
        await UserModel.saveCode(req.body.email, code);
        return res.json({
            message: "Confirm Email Verification"
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

exports.google = async (req, res) => {
    var email = req.body.email;
    var idToken = req.body.idToken;

    defaultApp.auth().verifyIdToken(idToken)
        .then(async (decodedToken) => {
            try {
                var user = await UserModel.findByEmail(email);
                const token = await jwtUtil.createToken({ id: user.id, role: user.role });
                return res.json({
                    access_token: token,
                    token_type: 'Bearer',
                    expires_in: jwtConfig.ttl,
                    user: {
                        name: user.username,
                        role: user.role
                    }
                });
            } catch (error) {
                return res.status(400).send({
                    message: error.message
                })
            }
        })
        .catch((error) => {
            console.log(error);
            return res.status(400).send({
                message: "Invalid Email"
            })
            // Handle error
        });
}

exports.authCallback = async (req, res) => {
    try {
        const query = req.query;
        if (query.expires) {
            if (new Date().getTime() - parseInt(query.expires) > 1000 * 60 * 5) {
                return res.status(400).send({
                    message: "Your verification is too late"
                })
            }
            await UserModel.verifyCode(query.email, query.code)
            return res.json({
                message: "Your Email is verified"
            })
        } else if (req.query.method == 'register')
            return res.redirect("/password");
    }
    catch (error) {
        return res.status(400).send({
            error: error.message
        })
    }
}

exports.register = async (req, res) => {
    try {
        try {
            var user = await UserModel.findByEmail(req.body.email);
            if (user.status)
                return res.status(400).send({
                    message: "User is already exist"
                })
            await UserModel.removeByEmail(user.email) 
        } catch (error) { }
        const email = req.body.email;
        const password = req.body.password;
        const username = req.body.username;
        const hashedPassword = await bcryptUtil.createHash(password);
        const code = bcryptUtil.genCode();
        const birthday = req.body.birthday
        await sendCode(email, code);
        // if (Object.keys(req.body).indexOf("avatar") == -1)
        //     req.body.avatar = `${urlConfig.SERVER_URL}api/resource/get/default-avatar.png`;
        const userData = {
            username: username,
            email: email,
            password: hashedPassword,
            role: "customer", // "customer, business, admin"
            status: 0,
            code: code,
            // avatar: req.body.avatar,
            level: "Beginner",
            birthday: birthday
        }
        await UserModel.create(userData)
        return res.json({
            message: 'Verify Code'
        });
    }
    catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

exports.facebook = async (req, res) => {

}

exports.login = async (req, res) => {
    try {
        var user = await UserModel.findByEmail(req.body.email)
        const isMatched = await bcryptUtil.compareHash(req.body.password, user.password);
        // const isMatched = req.body.password == user.password;
        if (isMatched && user.status) {
            const token = await jwtUtil.createToken({ id: user.id, role: user.role });
            return res.json({
                access_token: token,
                token_type: 'Bearer',
                expires_in: jwtConfig.ttl,
                user: {
                    name: user.username,
                    role: user.role,
                    avatar: user.avatar
                }
            });
        } else if ( !user.status ) {
            return res.status(400).json({
                message: "Your account is not available!"
            })
        } else {
            return res.status(400).json({
                message: "Wrong password!"
            })
        }
    }
    catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

exports.verifyCode = async (req, res) => {
    try {
        var user = await UserModel.findByEmail(req.body.email);
        if (user.code != req.body.code)
            throw new Error("Code is wrong")
        UserModel.makeActive(req.body.email);
        return res.json({
            message: "register success"
        })
    }
    catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

exports.resendCode = async (req, res) => {
    try {
        var code = bcryptUtil.genCode();
        await sendCode(req.body.email, code);
        await UserModel.saveCode(req.body.email, code);
        return res.json({
            message: "resend code success"
        })
    }
    catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

exports.avatar = async (req, res) => {
    try {
        var result = await UserModel.uploadAvatar(req.body);
        return res.json({
            message: "success",
            data: result
        })
    }
    catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

exports.getAllUsers = async (req, res) => {

    try {
        var result = await UserModel.getAll();
        return res.json({
            message: "success",
            data: result
        })
    }
    catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

exports.remove = async ( req, res ) => {
    try {
        await UserModel.remove(req.params.id);
        return res.json({
            message: "user deletion success"
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

exports.resetPassword = async ( req, res ) => {
    try {
        var email = req.body.email 
        var password = req.body.password
        var hashedPassword = await bcryptUtil.createHash(password)
        await UserModel.resetPassword(email, hashedPassword) 
        return res.json({
            message: "reset success"
        })
    } catch (error) {
        return res.status(400).send({
            message: error.message
        })
    }
}

// if (email.indexOf("@gmail.com") != -1) {
//     const transporter = nodemailer.createTransport({
//         service: 'gmail',
//         host: 'smtp.gmail.com',
//         port: 465,
//         // secure: true,
//         auth: {
//             user: mailConfig.gmail,
//             pass: mailConfig.gmail_password
//         },
//     });
//     try {
//         const mailOptions = {
//             from: mailConfig.gmail,
//             to: email,
//             subject: 'Verification Code From Dac Rapide',
//             text: `Your Verification Code is: <${code}>`,
//         };

//         const info = await transporter.sendMail(mailOptions);
//         resolve({ message: "success", data: code })
//         return;
//     } catch (error) {
//         console.log(error);
//         reject(error)
//         return;
//     }
// } 