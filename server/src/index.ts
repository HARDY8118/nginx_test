import express from "express";
// import { Tedis } from "tedis";

// const tedis = new Tedis({
//   port: 6379,
//   host: "store",
//   password: process.env["STORE_PASSWORD"],
// });

const app = express();
const PORT = process.env["PORT"] || 3000;

app.get("/", (req, res) => {
  res.send("07");
});

app.listen(PORT, () => {
  console.log(`Server listening on port: ${PORT}`);
});
