# Import required modules
load("@tidbyt/starlark", "tidbyt")

def main(ctx):
    # Create the screens
    screen1 = tidbyt.TextScreen(
        text="Your Name",
        font_size=24,
        text_color="white",
        background_color="black"
    )

    screen2 = tidbyt.TextScreen(
        text="Hello, World!",
        font_size=24,
        text_color="white",
        background_color="black"
    )

    # Transition from screen1 to screen2 after 5 seconds
    ctx.transition(screen1, screen2, duration=5)

# Register the main function as the entry point
tidbyt.run(main)
