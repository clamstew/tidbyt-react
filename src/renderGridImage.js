const React = require("react");
const ReactDOMServer = require("react-dom/server");
const { GridImage } = require("./GridImage");

const renderGridImageToString = () => {
  const componentString = ReactDOMServer.renderToString(
    React.createElement(GridImage, null)
  );
  console.log("componentString", componentString);
  return componentString;
};

module.exports = { renderGridImageToString };
