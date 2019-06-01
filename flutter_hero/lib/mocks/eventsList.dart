import '../models/event.dart';

List<Event> eventsListMock = [
  Event(
    id: "0001",
    title: "Dart conf 2019",
    country: "USA",
    city: "New York",
    description:
        "Best dart conf in the world, so good you won't believe it, lorem ipsum blah blah blah.",
    imageUrl: "https://lh3.googleusercontent.com/hLlnjfRfPV8m4dbpA-cJtn69vX7PRWdTRcc9Ijh_LKmuk3YKLf0hlWKvLJakdwlb75agMVgxjbbRFd9894LlVhEmAx2MYh4=s688",
    url: "https://dartconf.com",
    enrolledSpeakers: 5,
    maxSpeakers: 8,
    speakerProfiles: [
      'speaker001',
      'speaker002',
      'speaker003',
      'speaker004',
      'speaker005'
    ],
    date: new DateTime(2019, 7, 29),
  ),
  Event(
    id: "0002",
    title: "Flutter California",
    country: "USA",
    city: "Sacramento",
    description: "Example description of Sacramento Flutter conference",
    imageUrl: "http://www.laspositascollege.edu/gv/pdc/assets/images/conference.jpg",
    url: "https://fluttercalifornia.com",
    enrolledSpeakers: 9,
    maxSpeakers: 15,
    speakerProfiles: [
      'speaker001',
      'speaker002',
      'speaker003',
      'speaker004',
      'speaker005',
      'speaker006',
      'speaker007',
      'speaker008',
      'speaker009',
    ],
    date: new DateTime(2019, 8, 17),
  ),
  Event(
    id: "0003",
    title: "Flutter Helsinki",
    country: "Finland",
    city: "Helsinki",
    description: "Example description of Helsinki Flutter conference",
    imageUrl: "https://cdn.oreillystatic.com/en/assets/1/event/294/velocityca2019_og_image.jpg",
    url: "https://flutterhelsinki.com",
    enrolledSpeakers: 5,
    maxSpeakers: 10,
    speakerProfiles: [
      'speaker001',
      'speaker002',
      'speaker003',
      'speaker004',
      'speaker005'
    ],
    date: new DateTime(2019, 9, 22),
  ),
  Event(
    id: "0004",
    title: "Flutter Oslo",
    country: "Norway",
    city: "Oslo",
    description: "Example description of Oslo Flutter conference",
    imageUrl: "https://live.staticflickr.com/5557/15053958542_e68eea599f_b.jpg",
    url: "https://flutteroslo.com",
    enrolledSpeakers: 3,
    maxSpeakers: 8,
    speakerProfiles: [
      'speaker001',
      'speaker002',
      'speaker003',
    ],
    date: new DateTime(2019, 12, 19),
  ),
  Event(
    id: "0005",
    title: "Fluttery Dart 2019",
    country: "Germany",
    city: "Düsseldorf",
    description: "Example description of Düsseldorf Flutter conference",
    imageUrl: "https://static1.squarespace.com/static/55115f04e4b0f4baa9ed963c/t/5b61ad7388251bdab3de1a16/1533201518204/conference+image+resize.jpg?format=1500w",
    url: "https://flutterdusseldorf.com",
    enrolledSpeakers: 11,
    maxSpeakers: 12,
    speakerProfiles: [
      'speaker001',
      'speaker002',
      'speaker003',
      'speaker004',
      'speaker005',
      'speaker006',
      'speaker007',
      'speaker008',
      'speaker009',
      'speaker010',
      'speaker011',
    ],
    date: new DateTime(2019, 7, 18),
  ),
];
