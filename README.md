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
