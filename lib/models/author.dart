class Author {
  const Author({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.bio,
    required this.profilePictureUrl,
    required this.specialties,
    this.awards,
    required this.yearsActive,
  });

  final String id;
  final String firstName;
  final String lastName;
  final String bio;
  final String profilePictureUrl;
  final String specialties;
  final List<String>? awards;
  final int yearsActive;
}
