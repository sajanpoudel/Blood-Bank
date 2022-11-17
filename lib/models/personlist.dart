class Person {
  final int id;
  final String title, description;
  final List<String> images;
  final double rating;
  final bool isFavourite, isPopular;

  Person({
    required this.id,
    required this.images,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.description,
  });

  static final RegExp _bloodGroupPattern =
      RegExp(r'blood is\s+((?:AB|A|B|O)[+-])');

  /// The blood group written in the description, such as AB+, or null when there is none.
  String? get bloodGroup =>
      _bloodGroupPattern.firstMatch(description)?.group(1);

  /// True when [query] is part of the name or equals the blood group, ignoring case and spaces around it.
  bool matches(String query) {
    final text = query.trim().toLowerCase();
    if (text.isEmpty) return true;
    return title.toLowerCase().contains(text) ||
        bloodGroup?.toLowerCase() == text;
  }
}

/// The blood groups a donor can have, in the order the filter shows them.
const List<String> bloodGroups = [
  'A+',
  'A-',
  'B+',
  'B-',
  'AB+',
  'AB-',
  'O+',
  'O-'
];

/// The donors that match [query] and, when given, have exactly [bloodGroup], in their original order.
List<Person> filterPersons(List<Person> persons, String query,
    {String? bloodGroup}) {
  return persons
      .where((person) =>
          person.matches(query) &&
          (bloodGroup == null || person.bloodGroup == bloodGroup))
      .toList();
}

// Our demo Persons

List<Person> demoPersons = [
  Person(
    id: 1,
    images: [
      "assets/images/a.png",
    ],
    title: "Niraj Pandey",
    description:
        "Niraj Pandey is a student at University of Texas. His blood is AB+",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Person(
    id: 2,
    images: [
      "assets/images/b.png",
    ],
    title: "Smaran Bhattarai",
    description:
        "Smaran Bhattarai is a student at Dallas College. His blood is B-",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Person(
    id: 3,
    images: [
      "assets/images/c.png",
    ],
    title: "Nishant Pandey",
    description: "Nishant Pandey is a student at UTA. His blood is O+ .",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Person(
    id: 4,
    images: [
      "assets/images/d.png",
    ],
    title: "Kushal Sapkota",
    description:
        "Kushal Sapkota is a student at University of Dallas. His blood is A-",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Person(
    id: 5,
    images: [
      "assets/images/h.png",
    ],
    title: "Sajan Poudel",
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
];

const String description =
    "Sajan Poudel is a student from Kentucky Region. His blood is A+";
