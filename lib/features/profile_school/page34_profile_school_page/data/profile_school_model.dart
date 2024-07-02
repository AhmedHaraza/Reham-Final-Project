class ProfileSchoolModel {
  final String image;
  final String title;
  final void Function() onTap;

  ProfileSchoolModel({
    required this.image,
    required this.title,
    required this.onTap,
  });
}
