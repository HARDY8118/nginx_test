import express from "express";

const app = express();
const PORT = process.env["PORT"];

app.get("/heartbeat", (req, res) => {
  console.log(req.headers);
  res.status(200).send(`Alive ${PORT}\n`);
});

app.get("/heartbeat/delay", (req, res) => {
  setTimeout(() => {
    res.status(200).send(`Still Alive ${PORT}`);
  }, 8000);
});

app.listen(PORT, () => {
  console.log(`Server listening on port: ${PORT}`);
});
