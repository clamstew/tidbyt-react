const express = require("express");
const { renderGridImageToString } = require("./renderGridImage");
const { createCanvas } = require("canvas");

const nodeHtmlToImage = require("node-html-to-image");

const app = express();

// FIXME: this basically renders <canvas> currently.
app.get("/grid-image", (req, res) => {
  const componentString = renderGridImageToString();
  const base64String = Buffer.from(componentString).toString("base64");
  res.send(base64String);
});

// working route
app.get("/grid-image-live", (req, res) => {
  const canvas = createCanvas(64, 32);
  const context = canvas.getContext("2d");

  // Draw the grid image
  const gridSize = 2;
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

// if this works then react
// can render straight to the html
// string
app.get("/html", (req, res) => {
  nodeHtmlToImage({
    // output: "./image.png",
    puppeteerArgs: {
      defaultViewport: {
        width: 64,
        height: 32,
      },
    },
    encoding: "base64",
    html: `
    <html>
      <body style="
        padding-top: 6px;
        padding-left: 3px;  
        background: #000;
        display: flex;
        align-items: center;
        justify-content: center;
      ">
        👐
      </body>
    </html>`,
  }).then((result) => {
    console.log(result);
    // imageToBase64();
    res.send(result);
  });
});

app.listen(3000, () => {
  console.log("Server is running on port 3000");
});
