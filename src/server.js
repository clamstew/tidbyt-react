const express = require("express");
const { renderGridImageToString } = require("./renderGridImage");
const { createCanvas } = require("canvas");

const app = express();

// FIXME: this basically renders <canvas> currently.
app.get("/grid-image", (req, res) => {
  const componentString = renderGridImageToString();
  const base64String = Buffer.from(componentString).toString("base64");
  res.send(base64String);
});

// working route
app.get("/grid-image-live", (req, res) => {
  const canvas = createCanvas(300, 300);
  const context = canvas.getContext("2d");

  // Draw the grid image
  const gridSize = 10;
  const canvasWidth = canvas.width;
  const canvasHeight = canvas.height;
  let i = 0;
  const salt = `${new Date().getUTCMilliseconds()}`[0];

  for (let x = 0; x < canvasWidth; x += gridSize) {
    for (let y = 0; y < canvasHeight; y += gridSize) {
      context.fillStyle = `#${salt}${i}`;
      context.fillRect(x, y, gridSize, gridSize);
      i++;
    }
    i++;
  }

  const base64String = canvas.toDataURL(); // Convert canvas to base64 image string
  res.send(base64String.split(",")[1]);
});

app.listen(3000, () => {
  console.log("Server is running on port 3000");
});
