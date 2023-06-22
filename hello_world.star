load("render.star", "render")
load("animation.star", "animation")

def main():
    return render.Root(
        render.Sequence(
            children = [
                animation.Transformation(
                    duration = 100,
                    wait_for_child = True,
                    direction = "alternate",
                    fill_mode = "forwards",
                    child = render.Column(
                        children=[
                            render.Row(
                                expanded=True, # Use as much horizontal space as possible
                                main_align="space_evenly", # Controls horizontal alignment
                                cross_align="center", # Controls vertical alignment
                                children = [render.Text("Your")]
                            ),
                            render.Row(
                                expanded=True, # Use as much horizontal space as possible
                                main_align="space_evenly", # Controls horizontal alignment
                                cross_align="center", # Controls vertical alignment
                                children = [render.Text("Name")]
                            ),
                            render.Row(
                                expanded=True, # Use as much horizontal space as possible
                                main_align="space_evenly", # Controls horizontal alignment
                                cross_align="center", # Controls vertical alignment
                                children = [render.Text("Here")]
                            ),
                        ],
                    ),
                    keyframes = [
                        animation.Keyframe(
                            percentage = 0.0,
                            transforms = [],
                        ),
                        animation.Keyframe(
                            percentage = 1.0,
                            transforms = [],
                        ),
                    ],
                ),
                animation.Transformation(
                    duration = 100,
                    delay = 100,
                    wait_for_child = True,
                    direction = "alternate",
                    fill_mode = "forwards",
                    keyframes = [
                        animation.Keyframe(
                            percentage = 0.0,
                            transforms = [animation.Translate(0, 0)],
                        ),
                        animation.Keyframe(
                            percentage = 1.0,
                            transforms = [animation.Translate(-10, 0)],
                        ),
                    ],
                    child = render.Column(
                        children=[
                            render.Row(
                                expanded=True, # Use as much horizontal space as possible
                                main_align="space_evenly", # Controls horizontal alignment
                                cross_align="center", # Controls vertical alignment
                                children = [render.Text("is")]
                            ),
                            render.Row(
                                expanded=True, # Use as much horizontal space as possible
                                main_align="space_evenly", # Controls horizontal alignment
                                cross_align="center", # Controls vertical alignment
                                children = [render.Text("Cool")]
                            ),
                            render.Row(
                                expanded=True, # Use as much horizontal space as possible
                                main_align="space_evenly", # Controls horizontal alignment
                                cross_align="center", # Controls vertical alignment
                                children = [render.Text("Beans")]
                            ),
                        ],
                    ),
                ),
            ],
        ),
    )