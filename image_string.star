load("render.star", "render")
load("http.star", "http")
load("encoding/base64.star", "base64")

IMAGE_URL = "http://localhost:3000/grid-image-live"

def main():
    rep = http.get(IMAGE_URL)
    if rep.status_code != 200:
        fail("Live image request failed with status %d", rep.status_code)

    response_body = rep.body()
    LIVE_IMAGE_STRING = base64.decode(
      response_body
    )

    return render.Root(
        child = render.Row(
                children = [
                    render.Image(src=LIVE_IMAGE_STRING),
                ],
        )
    )