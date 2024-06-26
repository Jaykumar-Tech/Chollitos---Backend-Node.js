const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const cors = require('cors')
const async = require("async")
const fs = require("fs")
const mysql = require('mysql');
const app = express();
const nodemailer = require('nodemailer');

require('dotenv').config();
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(cors())

const ExistGuard = require("./middleware/existance.middleware");
const userRoute = require('./routes/user.route');
const databaseRoute = require("./routes/database.route");
const blogRoute = require("./routes/blog.route")
const storeRoute = require("./routes/store.route")
const reviewRoute = require("./routes/review.route")
const notificationRoute = require("./routes/notification.route")
const categoryRoute = require("./routes/category.route")
const dealRoute = require("./routes/deal.route")
const likeRoute = require("./routes/like.route")
const commentRoute = require("./routes/comment.route")
const resourceRoute = require("./routes/resource.route")
const activityRoute = require("./routes/activity.route")
const configRoute = require("./routes/config.route")
const bannerRoute = require("./routes/banner.route")

app.use(ExistGuard);
app.use('/api/user', userRoute);
app.use("/api/database", databaseRoute);
app.use("/api/blog", blogRoute)
app.use("/api/store", storeRoute)
app.use("/api/review", reviewRoute)
app.use("/api/notification", notificationRoute)
app.use("/api/category", categoryRoute)
app.use("/api/deal", dealRoute)
app.use("/api/like", likeRoute)
app.use("/api/comment", commentRoute)
app.use("/api/resource", resourceRoute)
app.use("/api/activity", activityRoute)
app.use("/api/config", configRoute)
app.use("/api/banner", bannerRoute)

app.use(express.static(path.join(__dirname, 'public')));

app.get("*", (req, res) => {
    return res.sendFile(`${__dirname}/public/index.html`)
})


module.exports = app;
