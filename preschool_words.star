"""
Applet: Preschool Words
Summary: A fun way for a child to ambiently see words they are learning to speak and write.
Description: By seeing words in the room, children learn to read common words they already know.
Author: clamstew
"""

load("render.star", "render")
load("time.star", "time")

WORDS = [
    "a",
    "about",
    "after",
    "afternoon",
    "again",
    "all",
    "always",
    "am",
    "an",
    "and",
    "animal",
    "another",
    "any",
    "are",
    "around",
    "at",
    "away",
    "baby",
    "back",
    "bad",
    "bag",
    "be",
    "because",
    "before",
    "behind",
    "believe",
    "best",
    "better",
    "big",
    "bird",
    "birthday",
    "bit",
    "black",
    "blue",
    "boat",
    "book",
    "both",
    "box",
    "boy",
    "break",
    "bring",
    "didn't",
    "do",
    "does",
    "dog",
    "don't",
    "down",
    "eat",
    "egg",
    "eggs",
    "end",
    "English",
    "farm",
    "favorite",
    "find",
    "first",
    "flowers",
    "food",
    "for",
    "found",
    "four",
    "friendly",
    "friends",
    "from",
    "fun",
    "get",
    "go",
    "going",
    "gone",
    "good",
    "got",
    "had",
    "has",
    "have",
    "he",
    "her",
    "him",
    "home",
    "horse",
    "house",
    "how",
    "hundred",
    "I'm",
    "I",
    "if",
    "in",
    "into",
    "is",
    "it's",
    "break",
    "bring",
    "broken",
    "brother",
    "brown",
    "building",
    "bus",
    "but",
    "buy",
    "by",
    "call",
    "came",
    "can",
    "car",
    "card",
    "carry",
    "chair",
    "change",
    "Christmas",
    "clean",
    "close",
    "coffee",
    "cold",
    "color",
    "come",
    "could",
    "crazy",
    "cry",
    "cut",
    "dad",
    "day",
    "dead",
    "did",
    "didn't",
    "different",
    "dinner",
    "dirty",
    "do",
    "does",
    "doesn't",
    "don't",
    "done",
    "door",
    "down",
    "draw",
    "drive",
    "dry",
    "eat",
    "there",
    "up",
    "want",
    "write",
    "out",
    "right",
    "see",
    "she",
    "so",
    "some",
    "that",
    "that's",
    "the",
    "them",
    "then",
    "there",
    "they",
    "think",
    "this",
    "those",
    "time",
    "to",
    "two",
    "up",
    "was",
    "we",
    "well",
    "what",
    "when",
    "with",
    "you",
    "your",
    "back",
    "were",
    "would",
    "pretty",
    "going",
    "sure",
    "will",
    "ten",
    "can't",
    "five",
    "I'll",
    "really",
    "something",
    "mean",
    "need",
    "stuff",
    "last",
    "said",
    "what's",
    "any",
    "broke",
    "broken",
    "brother",
    "brown",
    "building",
    "bus",
    "but",
    "buy",
    "by",
    "call",
    "can",
    "car",
    "card",
    "carry",
    "chair",
    "change",
    "Christmas",
    "clean",
    "coffee",
    "cold",
    "color",
    "come",
    "could",
    "crazy",
    "cry",
    "cut",
    "dad",
    "day",
    "dead",
    "did",
    "different",
    "dinner",
    "dirty",
    "do",
    "does",
    "don't",
    "done",
    "door",
    "down",
    "draw",
    "drive",
    "dry",
    "eat",
    "eight",
    "enough",
    "every",
    "everything",
    "face",
    "it",
    "just",
    "key",
    "know",
    "let",
    "light",
    "like",
    "little",
    "look",
    "made",
    "make",
    "me",
    "mom",
    "mother",
    "Mr.",
    "Mrs.",
    "muddy",
    "my",
    "myself",
    "nest",
    "new",
    "night",
    "no",
    "not",
    "now",
    "of",
    "on",
    "once",
    "one",
    "or",
    "other",
    "our",
    "out",
    "outside",
    "over",
    "people",
    "put",
    "read",
    "reading",
    "rice",
    "road",
    "robins",
    "safely",
    "said",
    "saw",
    "school",
    "second",
    "see",
    "eight",
    "enough",
    "every",
    "everything",
    "eye",
    "face",
    "fall",
    "far",
    "fast",
    "father",
    "feel",
    "feet",
    "fell",
    "find",
    "fine",
    "finish",
    "fire",
    "first",
    "five",
    "fix",
    "floor",
    "flood",
    "foot",
    "for",
    "forget",
    "found",
    "four",
    "free",
    "friend",
    "from",
    "fruit",
    "full",
    "funny",
    "game",
    "get",
    "girl",
    "give",
    "glass",
    "glasses",
    "go",
    "going",
    "gone",
    "good",
    "green",
    "had",
    "hand",
    "happy",
    "hard",
    "as",
    "big",
    "could",
    "day",
    "down",
    "from",
    "her",
    "here",
    "little",
    "over",
    "probably",
    "put",
    "take",
    "thought",
    "want",
    "work",
    "een",
    "three",
    "because",
    "off",
    "why",
    "has",
    "much",
    "who",
    "should",
    "kind",
    "tell",
    "home",
    "how",
    "huh",
    "okay",
    "way",
    "week",
    "tough",
    "wasn't",
    "doing",
    "getting",
    "thirty",
    "only",
    "hey",
    "ask",
    "class",
    "next",
    "our",
    "went",
    "where",
    "he's",
    "thing",
    "fall",
    "fast",
    "father",
    "feel",
    "feet",
    "fell",
    "find",
    "fine",
    "finish",
    "fire",
    "first",
    "five",
    "fix",
    "floor",
    "food",
    "foot",
    "for",
    "forget",
    "found",
    "four",
    "free",
    "friend",
    "from",
    "fruit",
    "full",
    "funny",
    "game",
    "get",
    "getting",
    "girl",
    "give",
    "glass",
    "glasses",
    "go",
    "going",
    "gone",
    "good",
    "green",
    "had",
    "hand",
    "happy",
    "hard",
    "has",
    "hat",
    "have",
    "he",
    "head",
    "hello",
    "she",
    "sides",
    "so",
    "social",
    "some",
    "something",
    "sore",
    "spelling",
    "started",
    "studies",
    "teacher's",
    "that",
    "the",
    "their",
    "them",
    "then",
    "there",
    "they",
    "this",
    "those",
    "three",
    "time",
    "to",
    "told",
    "too",
    "took",
    "tree",
    "triangle",
    "turn",
    "two",
    "up",
    "us",
    "use",
    "very",
    "wanted",
    "wants",
    "was",
    "water",
    "we",
    "went",
    "were",
    "what",
    "wheel",
    "when",
    "where",
    "white",
    "will",
    "with",
    "has",
    "hat",
    "have",
    "he",
    "head",
    "hello",
    "help",
    "her",
    "here",
    "high",
    "him",
    "his",
    "hit",
    "hold",
    "home",
    "hospital",
    "hot",
    "house",
    "how",
    "hurt",
    "ice",
    "idea",
    "if",
    "in",
    "inside",
    "into",
    "is",
    "isn't",
    "it",
    "juice",
    "just",
    "kind",
    "know",
    "last",
    "later",
    "lay",
    "left",
    "light",
    "like",
    "line",
    "listen",
    "little",
    "long",
    "look",
    "lost",
    "lot",
    "lunch",
    "by",
    "an",
    "you're",
    "say",
    "their",
    "people",
    "still",
    "year",
    "call",
    "him",
    "isn't",
    "today",
    "nice",
    "does",
    "keep",
    "done",
    "alright",
    "told",
    "everything",
    "yet",
    "am",
    "care",
    "Friday",
    "fun",
    "guys",
    "half",
    "seven",
    "yea",
    "been",
    "yes",
    "his",
    "night",
    "other",
    "than",
    "there's",
    "more",
    "four",
    "might",
    "let",
    "hours",
    "lot",
    "stay",
    "car",
    "not",
    "said",
    "long",
    "around",
    "guess",
    "always",
    "help",
    "her",
    "here",
    "high",
    "him",
    "his",
    "hit",
    "hold",
    "home",
    "house",
    "how",
    "hurt",
    "ice",
    "idea",
    "if",
    "in",
    "inside",
    "into",
    "is",
    "it",
    "juice",
    "just",
    "kind",
    "know",
    "last",
    "later",
    "lay",
    "leave",
    "left",
    "light",
    "like",
    "line",
    "listen",
    "little",
    "long",
    "look",
    "lost",
    "lot",
    "lunch",
    "mad",
    "made",
    "make",
    "man",
    "many",
    "may",
    "me",
    "mean",
    "wolf",
    "would",
    "yesterday",
    "you",
    "your",
    "mad",
    "made",
    "make",
    "man",
    "many",
    "may",
    "me",
    "mean",
    "might",
    "mine",
    "mom",
    "Monday",
    "money",
    "month",
    "more",
    "morning",
    "mother",
    "mouth",
    "move",
    "much",
    "music",
    "my",
    "myself",
    "name",
    "need",
    "never",
    "new",
    "next",
    "nice",
    "night",
    "nine",
    "no",
    "nose",
    "not",
    "nothing",
    "now",
    "nurse",
    "of",
    "off",
    "oh",
    "ok",
    "old",
    "on",
    "once",
    "one",
    "only",
    "open",
    "or",
    "hbefore",
    "school",
    "money",
    "better",
    "did",
    "give",
    "maybe",
    "bad",
    "too",
    "look",
    "again",
    "goes",
    "left",
    "try",
    "gosh",
    "cute",
    "end",
    "job",
    "phone",
    "supposed",
    "sure",
    "thanks",
    "then",
    "tonight",
    "these",
    "things",
    "another",
    "six",
    "find",
    "too",
    "doesn't",
    "eat",
    "else",
    "called",
    "forty",
    "comes",
    "play",
    "away",
    "hi",
    "wanted",
    "buy",
    "already",
    "anybody",
    "break",
    "bye",
    "damn",
    "eleven",
    "guy",
    "hdmine",
    "mom",
    "Monday",
    "money",
    "more",
    "morning",
    "mother",
    "mouth",
    "move",
    "much",
    "music",
    "my",
    "myself",
    "name",
    "need",
    "never",
    "new",
    "next",
    "nice",
    "night",
    "nine",
    "no",
    "nose",
    "not",
    "nothing",
    "now",
    "of",
    "off",
    "oh",
    "old",
    "on",
    "one",
    "opener",
    "other",
    "our",
    "out",
    "outside",
    "over",
    "own",
    "paper",
    "part",
    "party",
    "pass",
    "people",
    "phone",
    "pick",
    "picture",
    "pink",
    "l",
    "other",
    "our",
    "out",
    "outside",
    "over",
    "own",
    "paper",
    "part",
    "party",
    "pass",
    "people",
    "phone",
    "pick",
    "picture",
    "pink",
    "place",
    "play",
    "please",
    "present",
    "pretty",
    "pull",
    "push",
    "put",
    "quiet",
    "radio",
    "rain",
    "read",
    "ready",
    "real",
    "red",
    "remember",
    "rest",
    "right",
    "run",
    "said",
    "same",
    "sat",
    "saw",
    "say",
    "school",
    "see",
    "she",
    "short",
    "should",
    "show",
    "side",
    "silly",
    "sister",
    "ithard",
    "heard",
    "high",
    "kidding",
    "leave",
    "love",
    "minutes",
    "new",
    "please",
    "second",
    "Stephanie",
    "weekend",
    "won't",
    "ya",
    "came",
    "remember",
    "after",
    "place",
    "never",
    "she's",
    "made",
    "many",
    "used",
    "either",
    "until",
    "twenty",
    "name",
    "ever",
    "married",
    "real",
    "great",
    "water",
    "dinner",
    "use",
    "whatever",
    "hundred",
    "man",
    "yep",
    "deal",
    "check",
    "fat",
    "God",
    "graduate",
    "hell",
    "hold",
    "mine",
    "miss",
    "mom",
    "Stdplace",
    "play",
    "please",
    "present",
    "pretty",
    "pull",
    "push",
    "put",
    "quiet",
    "radio",
    "rain",
    "read",
    "ready",
    "real",
    "red",
    "remember",
    "rest",
    "right",
    "run",
    "said",
    "same",
    "sat",
    "saw",
    "say",
    "school",
    "see",
    "she",
    "short",
    "should",
    "show",
    "side",
    "silly",
    "sister",
    "sit",
    "six",
    "snow",
    "so",
    "soft",
    "some",
    "something",
    "soon",
    "sorry",
    "stand",
    "stay",
    "still",
    "stop",
    "store",
    "street",
    "sit",
    "six",
    "snow",
    "so",
    "soft",
    "some",
    "something",
    "soon",
    "sorry",
    "stand",
    "stay",
    "still",
    "stop",
    "store",
    "street",
    "summer",
    "sun",
    "table",
    "take",
    "talk",
    "tall",
    "tape",
    "teach",
    "tell",
    "ten",
    "thank",
    "that",
    "the",
    "their",
    "them",
    "then",
    "there",
    "these",
    "they",
    "thing",
    "think",
    "this",
    "those",
    "thought",
    "three",
    "through",
    "time",
    "to",
    "today",
    "told",
    "tomorrow",
    "too",
    "took",
    "tiSaturday",
    "sorry",
    "study",
    "through",
    "tomorrow",
    "um",
    "watch",
    "watched",
    "whole",
    "working",
    "write",
    "uh",
    "yeah",
    "we're",
    "Atlanta",
    "bucks",
    "eighty",
    "girls",
    "hair",
    "making",
    "neat",
    "quit",
    "rob",
    "sit",
    "small",
    "spring",
    "Sunday",
    "television",
    "watching",
    "I've",
    "its",
    "alone",
    "Ben",
    "Ben's",
    "cot",
    "Erin",
    "Greg",
    "Jacob",
    "Jerard",
    "playing",
    "Travis",
    "Trevor",
    "gonna",
    "mhmm",
    "they're",
    "old",
    "very",
    "morning",
    "summer",
    "sun",
    "table",
    "take",
    "talk",
    "tall",
    "tape",
    "teach",
    "tell",
    "ten",
    "thank",
    "that",
    "the",
    "their",
    "them",
    "then",
    "there",
    "these",
    "they",
    "thing",
    "think",
    "this",
    "those",
    "thought",
    "three",
    "through",
    "time",
    "to",
    "today",
    "told",
    "tomorrow",
    "too",
    "took",
    "train",
    "try",
    "Tuesday",
    "turn",
    "two",
    "under",
    "up",
    "us",
    "use",
    "very",
    "wait",
    "walk",
    "want",
    "was",
    "wash",
    "th",
    "train",
    "try",
    "Tuesday",
    "turn",
    "two",
    "under",
    "up",
    "us",
    "use",
    "very",
    "wait",
    "walk",
    "want",
    "was",
    "wash",
    "watch",
    "way",
    "we",
    "Wednesday",
    "week",
    "well",
    "went",
    "were",
    "what",
    "when",
    "where",
    "which",
    "white",
    "who",
    "whole",
    "why",
    "will",
    "wind",
    "with",
    "work",
    "working",
    "would",
    "write",
    "wrong",
    "yellow",
    "yes",
    "yesterday",
    "you",
    "your",
    "us",
    "took",
    "into",
    "while",
    "first",
    "couldn't",
    "last",
    "years",
    "house",
    "cause",
    "else",
    "watch",
    "way",
    "we",
    "wear",
    "Wednesday",
    "well",
    "went",
    "were",
    "what",
    "when",
    "where",
    "which",
    "while",
    "white",
    "who",
    "whole",
    "why",
    "will",
    "wind",
    "with",
    "work",
    "working",
    "would",
    "write",
    "wrong",
    "yellow",
    "yes",
    "yesterday",
    "you",
    "your"
]

# def frames:
#     return [
#         render.Text(WORDS[0])
#     ]
load("http.star", "http")

LAST_WORD = ""

def get_data(url):
    res = http.get(url, ttl_seconds=3600) # cache for 1 hour
    if res.status_code != 200:
        fail("GET %s failed with status %d: %s", url, res.status_code, res.body())
    return res.json()

def main(config):
    salt = str(time.now())
    ms_now =salt.split('.')[2]
    result = get_data("https://www.random.org/integers/?num=1&min=1&max=1100&col=1&base=10&format=plain&rnd="+ms_now)
    LAST_WORD = WORDS[int(result)]
    print(LAST_WORD)
    print(int(result))

    return render.Root(
        # delay = delay,
        show_full_animation = True,
        # child = render.Animation(children = frames),
        child = render.Row(
            expanded = True,
            main_align = "space_evenly",
            cross_align = "center",
            children = [
                render.Text(
                    # alignment = 'center',
                    content = WORDS[int(result)],
                    font="6x13",
                )
            ]
        )
        
    )

# def get_schema():
    # return schema.Schema(
    #     version = "1",
    #     fields = [
    #         schema.Color(
    #             id = "background",
    #             name = "Background Color",
    #             desc = "Color of the screen.",
    #             icon = "brush",
    #             default = DEFAULT_COLORS[0],
    #         ),
    #         schema.Color(
    #             id = "text_color",
    #             name = "Text color",
    #             desc = "The colors of the words",
    #             icon = "brush",
    #             default = DEFAULT_COLORS[2],
    #         ),
    #         schema.Color(
    #             id = "clock",
    #             name = "Clock Color",
    #             desc = "Color of the clock display.",
    #             icon = "brush",
    #             default = DEFAULT_COLORS[3],
    #         ),
    #         schema.Toggle(
    #             id = "fast",
    #             name = "Word list",
    #             desc = "Choose the word list ot use",
    #             icon = "gaugeHigh",
    #             default = DEFAULT_FAST,
    #         ),
    #     ],
    # )