import '../models/event.dart';

List<Event> eventsListMock = [
  Event(
    title: "Dart conf 2019",
    country: "USA",
    city: "New York",
    description:
        "Best dart conf in the world, so good you won't believe it, lorem ipsum blah blah blah.",
    url: "https://dartconf.com",
    enrolledSpeakers: 5,
    maxSpeakers: 8,
    date: new DateTime(2019, 7, 29),
  ),
  Event(
    title: "Flutter California",
    country: "USA",
    city: "Sacramento",
    description: "Example description of Sacramento Flutter conference",
    url: "https://fluttercalifornia.com",
    enrolledSpeakers: 9,
    maxSpeakers: 15,
    date: new DateTime(2019, 8, 17),
  ),
  Event(
    title: "Flutter Helsinki",
    country: "Finland",
    city: "Helsinki",
    description: "Example description of Helsinki Flutter conference",
    url: "https://flutterhelsinki.com",
    enrolledSpeakers: 5,
    maxSpeakers: 10,
    date: new DateTime(2019, 9, 22),
  ),
  Event(
    title: "Flutter Oslo",
    country: "Norway",
    city: "Oslo",
    description: "Example description of Oslo Flutter conference",
    url: "https://flutteroslo.com",
    enrolledSpeakers: 3,
    maxSpeakers: 8,
    date: new DateTime(2019, 12, 19),
  ),
  Event(
    title: "Fluttery Dart 2019",
    country: "Germany",
    city: "Düsseldorf",
    description: "Example description of Düsseldorf Flutter conference",
    url: "https://flutterdusseldorf.com",
    enrolledSpeakers: 11,
    maxSpeakers: 12,
    date: new DateTime(2019, 7, 18),
  )
];