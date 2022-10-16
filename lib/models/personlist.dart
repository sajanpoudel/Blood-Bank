import 'package:flutter/material.dart';

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
