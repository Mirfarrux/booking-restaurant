class OnboardingModel {
  final String title;
  final String description;
  final String imageUrl;

  OnboardingModel({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  factory OnboardingModel.fromMap(Map<String, dynamic> map) {
    return OnboardingModel(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
    );
  }
}
