const { useEffect, useRef } = require("react");
const React = require("react");

const GridImage = () => {
  const canvasRef = useRef(null);

  useEffect(() => {
    const canvas = canvasRef.current;
    const context = canvas.getContext("2d");

    // Draw the grid image
    const gridSize = 2;
    const canvasWidth = canvas.width;
    const canvasHeight = canvas.height;
    let i = 0;

    for (let x = 0; x < canvasWidth; x += gridSize) {
      for (let y = 0; y < canvasHeight; y += gridSize) {
        context.fillStyle = `#0${i}`; // Black color
        context.fillRect(x, y, gridSize, gridSize);
        i++;
      }
      i++;
    }
  }, []);

  return React.createElement("canvas", {
    ref: canvasRef,
    width: 64,
    height: 32,
  });
};

module.exports = { GridImage };
