import express from "express";
import path from "path";
require("dotenv").config();
import indexRouter from "./routes/index";
import usersRouter from "./routes/users";

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, "public")));


app.use("/v1/api/index", indexRouter);
app.use("/v1/api/index/users", usersRouter);

module.exports = app;
