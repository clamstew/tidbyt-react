const nodeHtmlToImage = require("node-html-to-image");

const fs = require("fs");

const filePath = "image.png";

function imageToBase64() {
  fs.readFile(filePath, (err, data) => {
    if (err) {
      console.error(err);
      return;
    }

    // const base64String = data.toString("base64");
    // console.log(base64String);
    console.log(data);
  });
}

nodeHtmlToImage({
  // output: "./image.png",
  puppeteerArgs: {
    defaultViewport: {
      width: 64,
      height: 32,
    },
  },
  encoding: "base64",
  html: "<html><body>Hello world!</body></html>",
}).then((result) => {
  console.log(result);
  // console.log("The image was created successfully!");
  // imageToBase64();
});
