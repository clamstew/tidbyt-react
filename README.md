## Idea:

Make a node server that can intake
normal react components and server-side render
them as a base64 strings to a tidbyt app.

The app `image_string.star` knows to call an api to get the right "react-to-base64 mini app". Each time the api is called it could return a different base64 image.

## Getting started

- run `yarn start` in one shell
- run `pixlet serve image_string.star` in another
- go to `http://127.0.0.1:8080`

see https://tidbyt.dev/docs/build/build-for-tidbyt for more pixlet setup and more dev commands.

`pixlet render image_string.star` for webp rendering.

## Current State:

Currently, I'm using a canvas element on the server and building a random pixel graphic on top of it. Then I'm rendering that to a base64 string as the server route output.

However, the idea is to go from there to a server rendered react component that is good at rendering pixelated images likely via css.

Then a developer can make a react component that sends a base64 image, which is readable by a pixlet/starlark program for display on a Tidbyt.

## Todo:

- [x] optimize the canvas size that gets rendered to base64 string to the size of a typical pixlet app
- [ ] add mechanism so user can pass values from the app schema on the tidbyt app to either set their "sub-react-app" they are loading (a param to the api). Or they could pass more values like text to display.
- [ ] could use `node-html-to-image` (which uses puppeteer under the hood) to out put html directly to a node script that converts to an image. Then the image can convert to base64.
- [ ] where do the react components come from? Maybe: the api that returns the final html rendering as base64 back to pixlet to display could take a param (`?react=<base64String>`) of a base64 encoded string of the react component. So then I only need a site/tool that takes a react component and returns base64. Then the schema/app inputs for the pixlet app could take an input of a base64 react component. Also with puppeteer I could probably get my screenshot of client side react, so need to test without server side render. That would be a big unlock because the client side component could do things like call an api to make the render more interesting and self contain stuff like that so it's already happened when the Tidbyt app simply calls the api for the final base64 image to display.
