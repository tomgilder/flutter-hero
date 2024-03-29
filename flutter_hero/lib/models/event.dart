class Event {
  final String id;
  final String title;
  final String country;
  final String city;
  final String url;
  final String description;
  final String imageUrl;
  final num enrolledSpeakers;
  final num maxSpeakers;
  final List<String> speakerProfiles;
  final DateTime date;

  Event({
    this.id,
    this.title,
    this.country,
    this.city,
    this.url,
    this.description,
    this.imageUrl,
    this.enrolledSpeakers,
    this.maxSpeakers,
    this.speakerProfiles,
    this.date,
  });
}
