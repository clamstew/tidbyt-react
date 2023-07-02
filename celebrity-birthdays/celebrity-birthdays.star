load("render.star", "render")
load("random.star", "random")
load("time.star", "time")

FAMOUS_POP_SINGERS = [
    {
        "name": 'Justin Bieber',
        "birthday": '1994-03-01T00:00:00Z',
    },
    {
        "name": 'Ariana Grande',
        "birthday": '1993-06-26T00:00:00Z',
    },
    {
        "name": 'Taylor Swift',
        "birthday": '1989-12-13T00:00:00Z',
    },
    {
        "name": 'Selena Gomez',
        "birthday": '1992-07-22T00:00:00Z',
    },
    {
        "name": 'Dua Lipa',
        "birthday": '1995-08-22T00:00:00Z',
    },
    {
        "name": 'Beyoncé',
        "birthday": '1981-09-04T00:00:00Z',
    },
    {
        "name": 'Lady Gaga',
        "birthday": '1986-03-28T00:00:00Z',
    },
    {
        "name": 'Billie Eilish',
        "birthday": '2001-12-18T00:00:00Z',
    },
    {
        "name": 'Rihanna',
        "birthday": '1988-02-20T00:00:00Z',
    },
    {
        "name": 'Katy Perry',
        "birthday": '1984-10-25T00:00:00Z',
    },
    {
        "name": 'Shawn Mendes',
        "birthday": '1998-08-08T00:00:00Z',
    },
    {
        "name": 'Harry Styles',
        "birthday": '1994-02-01T00:00:00Z',
    },
    {
        "name": 'Camila Cabello',
        "birthday": '1997-03-03T00:00:00Z',
    },
    {
        "name": 'Ed Sheeran',
        "birthday": '1991-02-17T00:00:00Z',
    },
    {
        "name": 'Bruno Mars',
        "birthday": '1985-10-08T00:00:00Z',
    },
    {
        "name": 'The Weeknd',
        "birthday": '1990-02-16T00:00:00Z',
    },
    {
        "name": 'Adele',
        "birthday": '1988-05-05T00:00:00Z',
    },
    {
        "name": 'Nicki Minaj',
        "birthday": '1982-12-08T00:00:00Z',
    },
    {
        "name": 'Drake',
        "birthday": '1986-10-24T00:00:00Z',
    },
    {
        "name": 'Miley Cyrus',
        "birthday": '1992-11-23T00:00:00Z',
    },
    {
        "name": 'Lana Del Rey',
        "birthday": '1985-06-21T00:00:00Z',
    },
    {
        "name": 'Lizzo',
        "birthday": '1988-04-27T00:00:00Z',
    },
    {
        "name": 'Post Malone',
        "birthday": '1995-07-04T00:00:00Z',
    },
    {
        "name": 'Cardi B',
        "birthday": '1992-10-11T00:00:00Z',
    },
    {
        "name": 'Alicia Keys',
        "birthday": '1981-01-25T00:00:00Z',
    },
    {
        "name": 'Sam Smith',
        "birthday": '1992-05-19T00:00:00Z',
    },
    {
        "name": 'Ava Max',
        "birthday": '1994-02-16T00:00:00Z',
    },
    {
        "name": 'Alessia Cara',
        "birthday": '1996-07-11T00:00:00Z',
    },
    {
        "name": 'Halsey',
        "birthday": '1994-09-29T00:00:00Z',
    },
    {
        "name": 'Sia',
        "birthday": '1975-12-18T00:00:00Z',
    },
    {
        "name": 'Zayn Malik',
        "birthday": '1993-01-12T00:00:00Z',
    },
    {
        "name": 'Khalid',
        "birthday": '1998-02-11T00:00:00Z',
    },
    {
        "name": 'Lil Nas X',
        "birthday": '1999-04-09T00:00:00Z',
    },
    {
        "name": 'Kanye West',
        "birthday": '1977-06-08T00:00:00Z',
    },
    {
        "name": 'Kendrick Lamar',
        "birthday": '1987-06-17T00:00:00Z',
    },
    {
        "name": 'Travis Scott',
        "birthday": '1992-04-30T00:00:00Z',
    },
    {
        "name": 'Eminem',
        "birthday": '1972-10-17T00:00:00Z',
    },
    {
        "name": 'Jay-Z',
        "birthday": '1969-12-04T00:00:00Z',
    },
    {
        "name": 'J. Cole',
        "birthday": '1985-01-28T00:00:00Z',
    },
    {
        "name": 'Dr. Dre',
        "birthday": '1965-02-18T00:00:00Z',
    },
    {
        "name": 'Lil Wayne',
        "birthday": '1982-09-27T00:00:00Z',
    },
    {
        "name": 'Snoop Dogg',
        "birthday": '1971-10-20T00:00:00Z',
    },
    {
        "name": '50 Cent',
        "birthday": '1975-07-06T00:00:00Z',
    },
    {
        "name": 'Ice Cube',
        "birthday": '1969-06-15T00:00:00Z',
    },
    {
        "name": 'Nas',
        "birthday": '1973-09-14T00:00:00Z',
    },
    {
        "name": 'Ludacris',
        "birthday": '1977-09-11T00:00:00Z',
    },
    {
        "name": 'Kodak Black',
        "birthday": '1997-06-11T00:00:00Z',
    },
    {
        "name": 'Lil Uzi Vert',
        "birthday": '1994-07-31T00:00:00Z',
    },
    {
        "name": 'Lil Baby',
        "birthday": '1994-12-03T00:00:00Z',
    },
    {
        "name": 'DaBaby',
        "birthday": '1991-12-22T00:00:00Z',
    },
    {
        "name": 'Roddy Ricch',
        "birthday": '1998-10-22T00:00:00Z',
    },
    {
        "name": 'YoungBoy Never Broke Again',
        "birthday": '1999-10-20T00:00:00Z',
    },
    {
        "name": 'Juice Wrld',
        "birthday": '1998-12-02T00:00:00Z',
    },
    {
        "name": 'Future',
        "birthday": '1983-11-20T00:00:00Z',
    },
    {
        "name": 'Meek Mill',
        "birthday": '1987-05-06T00:00:00Z',
    },
    {
        "name": 'Tyler, The Creator',
        "birthday": '1991-03-06T00:00:00Z',
    },
    {
        "name": 'JAY-Z',
        "birthday": '1969-12-04T00:00:00Z',
    },
    {
        "name": 'Kanye West',
        "birthday": '1977-06-08T00:00:00Z',
    },
    {
        "name": 'Drake',
        "birthday": '1986-10-24T00:00:00Z',
    },
    {
        "name": 'Eminem',
        "birthday": '1972-10-17T00:00:00Z',
    },
]


def main():
    today = time.now().in_location("Europe/London")
    print(today)

    num = random.number(0, len(FAMOUS_POP_SINGERS) - 1)
    celebrity = FAMOUS_POP_SINGERS[num]

    # '2001-01-01',
    date = time.parse_time(celebrity["birthday"])
    print(date)

    # print(time.parse_time(today - date))

    # ==========


    today = time.now().in_location("Europe/London") #.set_timezone("+00:00")

    num = random.number(0, len(FAMOUS_POP_SINGERS) - 1)
    celebrity = FAMOUS_POP_SINGERS[num]

    birthday = time.parse_time(celebrity["birthday"]).in_location("Europe/London") #.set_timezone("+00:00")
    print('birthday', birthday)
    next_birthday = time.time(year = today.year, month = birthday.month, day = birthday.day).in_location("Europe/London") #.set_timezone("+00:00")

    if today > next_birthday:
        next_birthday = time.time(year = today.year + 1,  month = birthday.month,  day = birthday.day).in_location("Europe/London") #.set_timezone("+00:00")

    print("next_birthday", next_birthday)

    days_until_birthday = (next_birthday - today).to_timedelta().to_days()

    print("The next birthday for", celebrity["name"], "is on", next_birthday.to_date(), "(", days_until_birthday, "days from now).")


    return render.Root(
        render.Column(
            children = [
                render.Row(
                    children = [
                        render.Text(content=FAMOUS_POP_SINGERS[num]['name']),
                    ],
                ),
                render.Row(
                    children = [
                        render.Text(content=FAMOUS_POP_SINGERS[num]['birthday']),
                    ],
                )
            ],
        )
    )
    







