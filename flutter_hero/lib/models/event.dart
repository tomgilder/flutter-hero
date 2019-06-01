class Event {
  final String id;
  final String title;
  final String country;
  final String city;
  final String url;
  final String description;
  final num enrolledSpeakers;
  final num maxSpeakers;
  final DateTime date;

  Event({
    this.id,
    this.title,
    this.country,
    this.city,
    this.url,
    this.description,
    this.enrolledSpeakers,
    this.maxSpeakers,
    this.date,
  });
}
