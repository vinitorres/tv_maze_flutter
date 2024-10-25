const successGetTvShows = <Map<String, dynamic>>[
  {
    'id': 1,
    'url': 'https://www.tvmaze.com/shows/1/under-the-dome',
    'name': 'Under the Dome',
    'type': 'Scripted',
    'language': 'English',
    'genres': [
      'Drama',
      'Science-Fiction',
      'Thriller',
    ],
    'status': 'Ended',
    'runtime': 60,
    'averageRuntime': 60,
    'premiered': '2013-06-24',
    'ended': '2015-09-10',
    'officialSite': 'http://www.cbs.com/shows/under-the-dome/',
    'schedule': {
      'time': '22:00',
      'days': [
        'Thursday',
      ],
    },
    'rating': {
      'average': 6.5,
    },
    'weight': 99,
    'network': {
      'id': 2,
      'name': 'CBS',
      'country': {
        'name': 'United States',
        'code': 'US',
        'timezone': 'America/New_York',
      },
      'officialSite': 'https://www.cbs.com/',
    },
    'webChannel': null,
    'dvdCountry': null,
    'externals': {
      'tvrage': 25988,
      'thetvdb': 264492,
      'imdb': 'tt1553656',
    },
    'image': {
      'medium':
          'https://static.tvmaze.com/uploads/images/medium_portrait/81/202627.jpg',
      'original':
          'https://static.tvmaze.com/uploads/images/original_untouched/81/202627.jpg',
    },
    'summary':
        "<p><b>Under the Dome</b> is the story of a small town that is suddenly and inexplicably sealed off from the rest of the world by an enormous transparent dome. The town's inhabitants must deal with surviving the post-apocalyptic conditions while searching for answers about the dome, where it came from and if and when it will go away.</p>",
    'updated': 1704794065,
    '_links': {
      'self': {
        'href': 'https://api.tvmaze.com/shows/1',
      },
      'previousepisode': {
        'href': 'https://api.tvmaze.com/episodes/185054',
        'name': 'The Enemy Within',
      },
    },
  },
  {
    'id': 2,
    'url': 'https://www.tvmaze.com/shows/2/person-of-interest',
    'name': 'Person of Interest',
    'type': 'Scripted',
    'language': 'English',
    'genres': [
      'Action',
      'Crime',
      'Science-Fiction',
    ],
    'status': 'Ended',
    'runtime': 60,
    'averageRuntime': 60,
    'premiered': '2011-09-22',
    'ended': '2016-06-21',
    'officialSite': 'http://www.cbs.com/shows/person_of_interest/',
    'schedule': {
      'time': '22:00',
      'days': [
        'Tuesday',
      ],
    },
    'rating': {
      'average': 8.8,
    },
    'weight': 99,
    'network': {
      'id': 2,
      'name': 'CBS',
      'country': {
        'name': 'United States',
        'code': 'US',
        'timezone': 'America/New_York',
      },
      'officialSite': 'https://www.cbs.com/',
    },
    'webChannel': null,
    'dvdCountry': null,
    'externals': {
      'tvrage': 28376,
      'thetvdb': 248742,
      'imdb': 'tt1839578',
    },
    'image': {
      'medium':
          'https://static.tvmaze.com/uploads/images/medium_portrait/163/407679.jpg',
      'original':
          'https://static.tvmaze.com/uploads/images/original_untouched/163/407679.jpg',
    },
    'summary':
        '<p>You are being watched. The government has a secret system, a machine that spies on you every hour of every day. I know because I built it. I designed the Machine to detect acts of terror but it sees everything. Violent crimes involving ordinary people. People like you. Crimes the government considered \'irrelevant". They wouldn\'t act so I decided I would. But I needed a partner. Someone with the skills to intervene. Hunted by the authorities, we work in secret. You\'ll never find us. But victim or perpetrator, if your number is up, we\'ll find you.</p>',
    'updated': 1724121898,
    '_links': {
      'self': {
        'href': 'https://api.tvmaze.com/shows/2',
      },
      'previousepisode': {
        'href': 'https://api.tvmaze.com/episodes/659372',
        'name': 'return 0',
      },
    },
  }
];

const successGetEpisodes = <Map<String, dynamic>>[
  {
    'id': 1,
    'url': 'https://www.tvmaze.com/episodes/1/under-the-dome-1x01-pilot',
    'name': 'Pilot',
    'season': 1,
    'number': 1,
    'type': 'regular',
    'airdate': '2013-06-24',
    'airtime': '22:00',
    'airstamp': '2013-06-25T02:00:00+00:00',
    'runtime': 60,
    'rating': {
      'average': 6.9,
    },
    'image': {
      'medium':
          'https://static.tvmaze.com/uploads/images/medium_landscape/1/4388.jpg',
      'original':
          'https://static.tvmaze.com/uploads/images/original_untouched/1/4388.jpg',
    },
    'summary':
        "<p>When the residents of Chester's Mill find themselves trapped under a massive transparent dome with no way out, they struggle to survive as resources rapidly dwindle and panic quickly escalates.</p>",
    '_links': {
      'self': {
        'href': 'https://api.tvmaze.com/episodes/1',
      },
      'show': {
        'href': 'https://api.tvmaze.com/shows/1',
        'name': 'Under the Dome',
      },
    },
  },
  {
    'id': 2,
    'url': 'https://www.tvmaze.com/episodes/2/under-the-dome-1x02-the-fire',
    'name': 'The Fire',
    'season': 1,
    'number': 2,
    'type': 'regular',
    'airdate': '2013-07-01',
    'airtime': '22:00',
    'airstamp': '2013-07-02T02:00:00+00:00',
    'runtime': 60,
    'rating': {
      'average': 6.5,
    },
    'image': {
      'medium':
          'https://static.tvmaze.com/uploads/images/medium_landscape/1/4389.jpg',
      'original':
          'https://static.tvmaze.com/uploads/images/original_untouched/1/4389.jpg',
    },
    'summary':
        "<p>While the residents of Chester's Mill face the uncertainty of life in the dome, panic is heightened when a house goes up in flames and their fire department is outside of the dome.</p>",
    '_links': {
      'self': {
        'href': 'https://api.tvmaze.com/episodes/2',
      },
      'show': {
        'href': 'https://api.tvmaze.com/shows/1',
        'name': 'Under the Dome',
      },
    },
  },
  {
    'id': 3,
    'url': 'https://www.tvmaze.com/episodes/3/under-the-dome-1x03-manhunt',
    'name': 'Manhunt',
    'season': 1,
    'number': 3,
    'type': 'regular',
    'airdate': '2013-07-08',
    'airtime': '22:00',
    'airstamp': '2013-07-09T02:00:00+00:00',
    'runtime': 60,
    'rating': {
      'average': 6.3,
    },
    'image': {
      'medium':
          'https://static.tvmaze.com/uploads/images/medium_landscape/1/4390.jpg',
      'original':
          'https://static.tvmaze.com/uploads/images/original_untouched/1/4390.jpg',
    },
    'summary':
        '<p>When a former deputy goes rogue, Big Jim recruits Barbie to join the manhunt to keep the town safe. Meanwhile, Junior is determined to escape the dome by going underground.</p>',
    '_links': {
      'self': {
        'href': 'https://api.tvmaze.com/episodes/3',
      },
      'show': {
        'href': 'https://api.tvmaze.com/shows/1',
        'name': 'Under the Dome',
      },
    },
  },
  {
    'id': 4,
    'url': 'https://www.tvmaze.com/episodes/4/under-the-dome-1x04-outbreak',
    'name': 'Outbreak',
    'season': 1,
    'number': 4,
    'type': 'regular',
    'airdate': '2013-07-15',
    'airtime': '22:00',
    'airstamp': '2013-07-16T02:00:00+00:00',
    'runtime': 60,
    'rating': {
      'average': 6.5,
    },
    'image': {
      'medium':
          'https://static.tvmaze.com/uploads/images/medium_landscape/1/4391.jpg',
      'original':
          'https://static.tvmaze.com/uploads/images/original_untouched/1/4391.jpg',
    },
    'summary':
        "<p>The people of Chester's Mill fall into a state of panic as an outbreak of meningitis strikes their community, threatening their already depleted medical supplies. Meanwhile, Julia continues to search for answers into her husband's disappearance.</p>",
    '_links': {
      'self': {
        'href': 'https://api.tvmaze.com/episodes/4',
      },
      'show': {
        'href': 'https://api.tvmaze.com/shows/1',
        'name': 'Under the Dome',
      },
    },
  },
];

const successGetCast = <Map<String, dynamic>>[
  {
    'person': {
      'id': 1,
      'url': 'https://www.tvmaze.com/people/1/mike-vogel',
      'name': 'Mike Vogel',
      'country': {
        'name': 'United States',
        'code': 'US',
        'timezone': 'America/New_York',
      },
      'birthday': '1979-07-17',
      'deathday': null,
      'gender': 'Male',
      'image': {
        'medium':
            'https://static.tvmaze.com/uploads/images/medium_portrait/0/1815.jpg',
        'original':
            'https://static.tvmaze.com/uploads/images/original_untouched/0/1815.jpg',
      },
      'updated': 1712003378,
      '_links': {
        'self': {'href': 'https://api.tvmaze.com/people/1'},
      },
    },
    'character': {
      'id': 1,
      'url':
          'https://www.tvmaze.com/characters/1/under-the-dome-dale-barbie-barbara',
      'name': 'Dale "Barbie" Barbara',
      'image': {
        'medium':
            'https://static.tvmaze.com/uploads/images/medium_portrait/0/3.jpg',
        'original':
            'https://static.tvmaze.com/uploads/images/original_untouched/0/3.jpg',
      },
      '_links': {
        'self': {'href': 'https://api.tvmaze.com/characters/1'},
      },
    },
    'self': false,
    'voice': false,
  },
  {
    'person': {
      'id': 2,
      'url': 'https://www.tvmaze.com/people/2/rachelle-lefevre',
      'name': 'Rachelle Lefevre',
      'country': {
        'name': 'Canada',
        'code': 'CA',
        'timezone': 'America/Halifax',
      },
      'birthday': '1979-02-01',
      'deathday': null,
      'gender': 'Female',
      'image': {
        'medium':
            'https://static.tvmaze.com/uploads/images/medium_portrait/82/207417.jpg',
        'original':
            'https://static.tvmaze.com/uploads/images/original_untouched/82/207417.jpg',
      },
      'updated': 1728584373,
      '_links': {
        'self': {'href': 'https://api.tvmaze.com/people/2'},
      },
    },
    'character': {
      'id': 2,
      'url': 'https://www.tvmaze.com/characters/2/under-the-dome-julia-shumway',
      'name': 'Julia Shumway',
      'image': {
        'medium':
            'https://static.tvmaze.com/uploads/images/medium_portrait/0/6.jpg',
        'original':
            'https://static.tvmaze.com/uploads/images/original_untouched/0/6.jpg',
      },
      '_links': {
        'self': {'href': 'https://api.tvmaze.com/characters/2'},
      },
    },
    'self': false,
    'voice': false,
  },
  {
    'person': {
      'id': 3,
      'url': 'https://www.tvmaze.com/people/3/alexander-koch',
      'name': 'Alexander Koch',
      'country': {
        'name': 'United States',
        'code': 'US',
        'timezone': 'America/New_York',
      },
      'birthday': '1988-02-24',
      'deathday': null,
      'gender': 'Male',
      'image': {
        'medium':
            'https://static.tvmaze.com/uploads/images/medium_portrait/205/513325.jpg',
        'original':
            'https://static.tvmaze.com/uploads/images/original_untouched/205/513325.jpg',
      },
      'updated': 1651887118,
      '_links': {
        'self': {'href': 'https://api.tvmaze.com/people/3'},
      },
    },
    'character': {
      'id': 3,
      'url': 'https://www.tvmaze.com/characters/3/under-the-dome-junior-rennie',
      'name': 'Junior Rennie',
      'image': {
        'medium':
            'https://static.tvmaze.com/uploads/images/medium_portrait/0/10.jpg',
        'original':
            'https://static.tvmaze.com/uploads/images/original_untouched/0/10.jpg',
      },
      '_links': {
        'self': {'href': 'https://api.tvmaze.com/characters/3'},
      },
    },
    'self': false,
    'voice': false,
  },
  {
    'person': {
      'id': 5,
      'url': 'https://www.tvmaze.com/people/5/colin-ford',
      'name': 'Colin Ford',
      'country': {
        'name': 'United States',
        'code': 'US',
        'timezone': 'America/New_York',
      },
      'birthday': '1996-09-12',
      'deathday': null,
      'gender': 'Male',
      'image': {
        'medium':
            'https://static.tvmaze.com/uploads/images/medium_portrait/142/356748.jpg',
        'original':
            'https://static.tvmaze.com/uploads/images/original_untouched/142/356748.jpg',
      },
      'updated': 1723045508,
      '_links': {
        'self': {'href': 'https://api.tvmaze.com/people/5'},
      },
    },
    'character': {
      'id': 5,
      'url': 'https://www.tvmaze.com/characters/5/under-the-dome-joe-mcalister',
      'name': 'Joe McAlister',
      'image': {
        'medium':
            'https://static.tvmaze.com/uploads/images/medium_portrait/0/7.jpg',
        'original':
            'https://static.tvmaze.com/uploads/images/original_untouched/0/7.jpg',
      },
      '_links': {
        'self': {'href': 'https://api.tvmaze.com/characters/5'},
      },
    },
    'self': false,
    'voice': false,
  },
];

const successSearch = <Map<String, dynamic>>[
  {
    'score': 0.6658925,
    'show': {
      'id': 60391,
      'url': 'https://www.tvmaze.com/shows/60391/under-wraps',
      'name': 'Under Wraps',
      'type': 'Scripted',
      'language': 'English',
      'genres': ['Comedy', 'Children', 'Supernatural'],
      'status': 'Running',
      'runtime': 120,
      'averageRuntime': 95,
      'premiered': '2021-10-01',
      'ended': null,
      'officialSite':
          'https://www.disneyplus.com/movies/under-wraps/3fHplkFIrgKY',
      'schedule': {
        'time': '20:00',
        'days': ['Friday'],
      },
      'rating': {'average': null},
      'weight': 49,
      'network': {
        'id': 78,
        'name': 'Disney Channel',
        'country': {
          'name': 'United States',
          'code': 'US',
          'timezone': 'America/New_York',
        },
        'officialSite': 'https://disneynow.com/all-shows/disney-channel',
      },
      'webChannel': null,
      'dvdCountry': null,
      'externals': {'tvrage': null, 'thetvdb': null, 'imdb': null},
      'image': {
        'medium':
            'https://static.tvmaze.com/uploads/images/medium_portrait/424/1061730.jpg',
        'original':
            'https://static.tvmaze.com/uploads/images/original_untouched/424/1061730.jpg',
      },
      'summary':
          "<p>Three friends accidentally revive a mummy they find in a neighbor's basement. They name him Harold and must rush to return him to his resting place before midnight on Halloween.</p>",
      'updated': 1664946088,
      '_links': {
        'self': {'href': 'https://api.tvmaze.com/shows/60391'},
        'previousepisode': {
          'href': 'https://api.tvmaze.com/episodes/2272416',
          'name': 'Under Wraps 2',
        },
      },
    },
  },
  {
    'score': 0.6638341,
    'show': {
      'id': 44970,
      'url': 'https://www.tvmaze.com/shows/44970/under-suspicion',
      'name': 'Under Suspicion',
      'type': 'Scripted',
      'language': 'English',
      'genres': ['Drama', 'Crime', 'Mystery'],
      'status': 'Ended',
      'runtime': 60,
      'averageRuntime': 60,
      'premiered': '1994-09-16',
      'ended': '1995-03-10',
      'officialSite': null,
      'schedule': {
        'time': '',
        'days': ['Friday'],
      },
      'rating': {'average': null},
      'weight': 47,
      'network': {
        'id': 2,
        'name': 'CBS',
        'country': {
          'name': 'United States',
          'code': 'US',
          'timezone': 'America/New_York',
        },
        'officialSite': 'https://www.cbs.com/',
      },
      'webChannel': null,
      'dvdCountry': null,
      'externals': {'tvrage': null, 'thetvdb': 73221, 'imdb': 'tt0108972'},
      'image': {
        'medium':
            'https://static.tvmaze.com/uploads/images/medium_portrait/382/956149.jpg',
        'original':
            'https://static.tvmaze.com/uploads/images/original_untouched/382/956149.jpg',
      },
      'summary':
          '<p>A dramatic police mystery, exposes the unending prejudice faced by the only female detective in a male-dominated police squad.</p>',
      'updated': 1639218672,
      '_links': {
        'self': {'href': 'https://api.tvmaze.com/shows/44970'},
        'previousepisode': {
          'href': 'https://api.tvmaze.com/episodes/1754777',
          'name': 'Wrongful Shooting',
        },
      },
    },
  },
  {
    'score': 0.6583514,
    'show': {
      'id': 37922,
      'url': 'https://www.tvmaze.com/shows/37922/under-cover',
      'name': 'Under Cover',
      'type': 'Scripted',
      'language': 'English',
      'genres': ['Drama', 'Action', 'Thriller'],
      'status': 'Ended',
      'runtime': 60,
      'averageRuntime': 60,
      'premiered': '1991-01-07',
      'ended': '1991-07-20',
      'officialSite': null,
      'schedule': {
        'time': '21:00',
        'days': ['Saturday'],
      },
      'rating': {'average': null},
      'weight': 43,
      'network': {
        'id': 3,
        'name': 'ABC',
        'country': {
          'name': 'United States',
          'code': 'US',
          'timezone': 'America/New_York',
        },
        'officialSite': 'https://abc.com/',
      },
      'webChannel': null,
      'dvdCountry': null,
      'externals': {'tvrage': null, 'thetvdb': 74736, 'imdb': 'tt0101229'},
      'image': null,
      'summary':
          '<p>Show about a husband-and-wife team of spies working for the National Intelligence Agency. The stories revolved around Dylan and Kate and their personal lives in addition to their intelligence activities.</p>',
      'updated': 1555971144,
      '_links': {
        'self': {'href': 'https://api.tvmaze.com/shows/37922'},
        'previousepisode': {
          'href': 'https://api.tvmaze.com/episodes/1503092',
          'name': 'The Wall (2)',
        },
      },
    },
  },
  {
    'score': 0.65011823,
    'show': {
      'id': 71004,
      'url': 'https://www.tvmaze.com/shows/71004/under-ninja',
      'name': 'Under Ninja',
      'type': 'Animation',
      'language': 'Japanese',
      'genres': ['Comedy', 'Action', 'Anime'],
      'status': 'Running',
      'runtime': 25,
      'averageRuntime': 25,
      'premiered': '2023-10-05',
      'ended': null,
      'officialSite': 'https://under-ninja.jp/',
      'schedule': {
        'time': '01:43',
        'days': ['Thursday'],
      },
      'rating': {'average': null},
      'weight': 37,
      'network': {
        'id': 159,
        'name': 'TBS',
        'country': {'name': 'Japan', 'code': 'JP', 'timezone': 'Asia/Tokyo'},
        'officialSite': 'https://www.tbs.co.jp/',
      },
      'webChannel': null,
      'dvdCountry': null,
      'externals': {'tvrage': null, 'thetvdb': 409650, 'imdb': 'tt15378218'},
      'image': {
        'medium':
            'https://static.tvmaze.com/uploads/images/medium_portrait/480/1200237.jpg',
        'original':
            'https://static.tvmaze.com/uploads/images/original_untouched/480/1200237.jpg',
      },
      'summary':
          '<p>A high school loner is given the part-time job of a lifetime as a modern day ninja tasked to perform international assassinations.<br /><br />After World War II, Allied Command in Japan developed a new agency to help manage terrorism and violence within the Pacific region. The agency was staffed with ninja and they were initially tasked to handle domestic affairs. Eventually that program grew to its current form, managing 20,000 ninja across a range of domestic and international affairs. One of those ninjas happens to be Kudo. The seventeen-year-old high school loser is now poised to be the next line of defense against a potential surge in foreign assassins invading Tokyo.</p>',
      'updated': 1716558267,
      '_links': {
        'self': {'href': 'https://api.tvmaze.com/shows/71004'},
        'previousepisode': {
          'href': 'https://api.tvmaze.com/episodes/2661061',
          'name': 'Business as Usual, Wrapped Up Tidy',
        },
      },
    },
  },
];

const successGetActorSeries = <Map<String, dynamic>>[
  {
    'self': false,
    'voice': false,
    '_links': {
      'show': {
        'href': 'https://api.tvmaze.com/shows/1',
        'name': 'Under the Dome',
      },
      'character': {
        'href': 'https://api.tvmaze.com/characters/1',
        'name': 'Dale "Barbie" Barbara',
      },
    },
    '_embedded': {
      'show': {
        'id': 1,
        'url': 'https://www.tvmaze.com/shows/1/under-the-dome',
        'name': 'Under the Dome',
        'type': 'Scripted',
        'language': 'English',
        'genres': ['Drama', 'Science-Fiction', 'Thriller'],
        'status': 'Ended',
        'runtime': 60,
        'averageRuntime': 60,
        'premiered': '2013-06-24',
        'ended': '2015-09-10',
        'officialSite': 'http://www.cbs.com/shows/under-the-dome/',
        'schedule': {
          'time': '22:00',
          'days': ['Thursday'],
        },
        'rating': {'average': 6.5},
        'weight': 99,
        'network': {
          'id': 2,
          'name': 'CBS',
          'country': {
            'name': 'United States',
            'code': 'US',
            'timezone': 'America/New_York',
          },
          'officialSite': 'https://www.cbs.com/',
        },
        'webChannel': null,
        'dvdCountry': null,
        'externals': {'tvrage': 25988, 'thetvdb': 264492, 'imdb': 'tt1553656'},
        'image': {
          'medium':
              'https://static.tvmaze.com/uploads/images/medium_portrait/81/202627.jpg',
          'original':
              'https://static.tvmaze.com/uploads/images/original_untouched/81/202627.jpg',
        },
        'summary':
            "<p><b>Under the Dome</b> is the story of a small town that is suddenly and inexplicably sealed off from the rest of the world by an enormous transparent dome. The town's inhabitants must deal with surviving the post-apocalyptic conditions while searching for answers about the dome, where it came from and if and when it will go away.</p>",
        'updated': 1704794065,
        '_links': {
          'self': {'href': 'https://api.tvmaze.com/shows/1'},
          'previousepisode': {
            'href': 'https://api.tvmaze.com/episodes/185054',
            'name': 'The Enemy Within',
          },
        },
      },
    },
  },
  {
    'self': false,
    'voice': false,
    '_links': {
      'show': {'href': 'https://api.tvmaze.com/shows/942', 'name': 'Pan Am'},
      'character': {
        'href': 'https://api.tvmaze.com/characters/89565',
        'name': 'Dean Lowrey',
      },
    },
    '_embedded': {
      'show': {
        'id': 942,
        'url': 'https://www.tvmaze.com/shows/942/pan-am',
        'name': 'Pan Am',
        'type': 'Scripted',
        'language': 'English',
        'genres': ['Drama', 'Thriller'],
        'status': 'Ended',
        'runtime': 60,
        'averageRuntime': 60,
        'premiered': '2011-09-25',
        'ended': '2012-02-19',
        'officialSite': null,
        'schedule': {
          'time': '22:00',
          'days': ['Sunday'],
        },
        'rating': {'average': 7.3},
        'weight': 85,
        'network': {
          'id': 3,
          'name': 'ABC',
          'country': {
            'name': 'United States',
            'code': 'US',
            'timezone': 'America/New_York',
          },
          'officialSite': 'https://abc.com/',
        },
        'webChannel': null,
        'dvdCountry': null,
        'externals': {'tvrage': 28397, 'thetvdb': 247361, 'imdb': 'tt1826805'},
        'image': {
          'medium':
              'https://static.tvmaze.com/uploads/images/medium_portrait/6/16205.jpg',
          'original':
              'https://static.tvmaze.com/uploads/images/original_untouched/6/16205.jpg',
        },
        'summary':
            "<p>Passion, jealousy, espionage. They do it all and they do it at 30,000 feet. Mad Men's style meets Grey's Anatomy's entanglements in this thrilling and highly original new drama from producer Nancy Hult Ganis , writer Jack Orman and director Tommy Schlamme.</p>",
        'updated': 1728793338,
        '_links': {
          'self': {'href': 'https://api.tvmaze.com/shows/942'},
          'previousepisode': {
            'href': 'https://api.tvmaze.com/episodes/91568',
            'name': '1964',
          },
        },
      },
    },
  },
  {
    'self': false,
    'voice': false,
    '_links': {
      'show': {
        'href': 'https://api.tvmaze.com/shows/2942',
        'name': "Childhood's End",
      },
      'character': {
        'href': 'https://api.tvmaze.com/characters/164406',
        'name': 'Ricky Stormgren',
      },
    },
    '_embedded': {
      'show': {
        'id': 2942,
        'url': 'https://www.tvmaze.com/shows/2942/childhoods-end',
        'name': "Childhood's End",
        'type': 'Scripted',
        'language': 'English',
        'genres': ['Drama', 'Science-Fiction'],
        'status': 'Ended',
        'runtime': 120,
        'averageRuntime': 120,
        'premiered': '2015-12-14',
        'ended': '2015-12-16',
        'officialSite': 'http://www.syfy.com/childhoodsend',
        'schedule': {
          'time': '20:00',
          'days': ['Monday'],
        },
        'rating': {'average': 7.5},
        'weight': 89,
        'network': {
          'id': 16,
          'name': 'Syfy',
          'country': {
            'name': 'United States',
            'code': 'US',
            'timezone': 'America/New_York',
          },
          'officialSite': null,
        },
        'webChannel': null,
        'dvdCountry': null,
        'externals': {'tvrage': 35425, 'thetvdb': 296065, 'imdb': 'tt4146128'},
        'image': {
          'medium':
              'https://static.tvmaze.com/uploads/images/medium_portrait/483/1208949.jpg',
          'original':
              'https://static.tvmaze.com/uploads/images/original_untouched/483/1208949.jpg',
        },
        'summary':
            "<p>Written by Arthur C. Clarke and hailed as a revolutionary work of science fiction since its publishing in 1953, <b>Childhood's End </b>follows the peaceful alien invasion of Earth by the mysterious \"Overlords,\" whose arrival begins decades of apparent utopia under indirect alien rule, at the cost of human identity and culture.</p>",
        'updated': 1704795076,
        '_links': {
          'self': {'href': 'https://api.tvmaze.com/shows/2942'},
          'previousepisode': {
            'href': 'https://api.tvmaze.com/episodes/209079',
            'name': 'The Children',
          },
        },
      },
    },
  },
  {
    'self': false,
    'voice': false,
    '_links': {
      'show': {
        'href': 'https://api.tvmaze.com/shows/4730',
        'name': 'Miami Medical',
      },
      'character': {
        'href': 'https://api.tvmaze.com/characters/176889',
        'name': 'Dr. Chris DeLeo',
      },
    },
    '_embedded': {
      'show': {
        'id': 4730,
        'url': 'https://www.tvmaze.com/shows/4730/miami-medical',
        'name': 'Miami Medical',
        'type': 'Scripted',
        'language': 'English',
        'genres': ['Drama', 'Medical'],
        'status': 'Ended',
        'runtime': 60,
        'averageRuntime': 60,
        'premiered': '2010-04-02',
        'ended': '2010-07-02',
        'officialSite': 'http://www.cbs.com/primetime/miami_medical/',
        'schedule': {
          'time': '21:00',
          'days': ['Friday'],
        },
        'rating': {'average': 5.5},
        'weight': 78,
        'network': {
          'id': 2,
          'name': 'CBS',
          'country': {
            'name': 'United States',
            'code': 'US',
            'timezone': 'America/New_York',
          },
          'officialSite': 'https://www.cbs.com/',
        },
        'webChannel': null,
        'dvdCountry': null,
        'externals': {'tvrage': 22781, 'thetvdb': 142561, 'imdb': 'tt1406662'},
        'image': {
          'medium':
              'https://static.tvmaze.com/uploads/images/medium_portrait/21/53020.jpg',
          'original':
              'https://static.tvmaze.com/uploads/images/original_untouched/21/53020.jpg',
        },
        'summary':
            '<p><b>Miami Medical</b> is a medical drama about a team of expert surgeons who thrive on the adrenaline rush of working at one of the premiere trauma facilities in the country while drawing upon their wit and irreverence to survive on the edge.</p>',
        'updated': 1711365048,
        '_links': {
          'self': {'href': 'https://api.tvmaze.com/shows/4730'},
          'previousepisode': {
            'href': 'https://api.tvmaze.com/episodes/302660',
            'name': 'Medicine Man',
          },
        },
      },
    },
  },
  {
    'self': false,
    'voice': false,
    '_links': {
      'show': {
        'href': 'https://api.tvmaze.com/shows/24623',
        'name': 'The Brave',
      },
      'character': {
        'href': 'https://api.tvmaze.com/characters/458714',
        'name': 'Captain Adam Dalton',
      },
    },
    '_embedded': {
      'show': {
        'id': 24623,
        'url': 'https://www.tvmaze.com/shows/24623/the-brave',
        'name': 'The Brave',
        'type': 'Scripted',
        'language': 'English',
        'genres': ['Drama', 'Action', 'War'],
        'status': 'Ended',
        'runtime': 60,
        'averageRuntime': 60,
        'premiered': '2017-09-25',
        'ended': '2018-01-29',
        'officialSite': 'https://www.nbc.com/the-brave',
        'schedule': {
          'time': '22:00',
          'days': ['Monday'],
        },
        'rating': {'average': 7.7},
        'weight': 94,
        'network': {
          'id': 1,
          'name': 'NBC',
          'country': {
            'name': 'United States',
            'code': 'US',
            'timezone': 'America/New_York',
          },
          'officialSite': 'https://www.nbc.com/',
        },
        'webChannel': null,
        'dvdCountry': null,
        'externals': {'tvrage': null, 'thetvdb': 328517, 'imdb': 'tt6461736'},
        'image': {
          'medium':
              'https://static.tvmaze.com/uploads/images/medium_portrait/123/307553.jpg',
          'original':
              'https://static.tvmaze.com/uploads/images/original_untouched/123/307553.jpg',
        },
        'summary':
            "<p>This fresh, heart-pounding journey into the complex world of America's elite undercover military heroes follows D.I.A. Deputy Director Patricia Campbell and her team of analysts as they wield the world's most advanced surveillance technology from headquarters in D.C. All the while, Adam Dalton and his heroic Special Ops squad of highly trained undercover specialists use their unbreakable bond and commitment to freedom to save lives of innocent people and execute missions in some of the most dangerous places in the world.</p>",
        'updated': 1704795540,
        '_links': {
          'self': {'href': 'https://api.tvmaze.com/shows/24623'},
          'previousepisode': {
            'href': 'https://api.tvmaze.com/episodes/1384022',
            'name': 'Close to Home: Part 2',
          },
        },
      },
    },
  },
  {
    'self': false,
    'voice': false,
    '_links': {
      'show': {
        'href': 'https://api.tvmaze.com/shows/46073',
        'name': 'Sex/Life',
      },
      'character': {
        'href': 'https://api.tvmaze.com/characters/705966',
        'name': 'Cooper Connelly',
      },
    },
    '_embedded': {
      'show': {
        'id': 46073,
        'url': 'https://www.tvmaze.com/shows/46073/sexlife',
        'name': 'Sex/Life',
        'type': 'Scripted',
        'language': 'English',
        'genres': ['Drama', 'Comedy', 'Adult'],
        'status': 'Ended',
        'runtime': null,
        'averageRuntime': 50,
        'premiered': '2021-06-25',
        'ended': '2023-03-02',
        'officialSite': 'https://www.netflix.com/title/80991848',
        'schedule': {'time': '', 'days': []},
        'rating': {'average': 5.7},
        'weight': 94,
        'network': null,
        'webChannel': {
          'id': 1,
          'name': 'Netflix',
          'country': null,
          'officialSite': 'https://www.netflix.com/',
        },
        'dvdCountry': null,
        'externals': {'tvrage': null, 'thetvdb': 368373, 'imdb': 'tt10839422'},
        'image': {
          'medium':
              'https://static.tvmaze.com/uploads/images/medium_portrait/321/803599.jpg',
          'original':
              'https://static.tvmaze.com/uploads/images/original_untouched/321/803599.jpg',
        },
        'summary':
            '<p><b>Sex/Life</b> is the story of a love triangle between a woman, Billie Connelly, her husband, and her past which takes a deliciously steamy new look at female identity and desire.</p>',
        'updated': 1680895480,
        '_links': {
          'self': {'href': 'https://api.tvmaze.com/shows/46073'},
          'previousepisode': {
            'href': 'https://api.tvmaze.com/episodes/2457337',
            'name': 'Heavenly Day',
          },
        },
      },
    },
  }
];
