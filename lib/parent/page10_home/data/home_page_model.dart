class HomePageModel {
  final String mainImage;
  final String arabicSchoolName;
  final String englishSchoolName;
  final String typeSchool;
  final String logo;
  final String price;
  final String location;

  HomePageModel({
    required this.mainImage,
    required this.arabicSchoolName,
    required this.englishSchoolName,
    required this.typeSchool,
    required this.logo,
    required this.price,
    required this.location,
  });
}

List<HomePageModel> homePageModelDetales = [
  HomePageModel(
      mainImage: "assets/images/Rectangle 1600.png",
      arabicSchoolName: "المدرسة الرسمية الدولية",
      englishSchoolName: "International public school",
      typeSchool: "National- International",
      logo: "assets/images/5689.png",
      price: "Fees start  20,000 LE",
      location: "Obour City"),
  HomePageModel(
      mainImage: "assets/images/school2.png",
      arabicSchoolName: "مدرسة اولاد النيل الدولية",
      englishSchoolName: "Nile Sons International School",
      typeSchool: "National- International",
      logo: "assets/images/schoolIcon2.png",
      price: "Fees start  100,000 LE",
      location: "Sixth District Obour City"),
  HomePageModel(
      mainImage: "assets/images/school3.png",
      arabicSchoolName: "المدرسة المصرية الدولية",
      englishSchoolName: "Egyptian International School Elsheikh -EIS Zayed",
      typeSchool: "National- International",
      logo: "assets/images/schoolIcon3.png",
      price: "Fees start  35,000 LE",
      location: "Elsheikh Zayed"),
  HomePageModel(
      mainImage: "assets/images/image89.png",
      arabicSchoolName: " مدرسة مصر البريطانية الدولية",
      englishSchoolName: "Egypt British International School",
      typeSchool: "National",
      logo: "assets/images/image90.png",
      price: "Fees start  115,000 LE",
      location: "Misr El-gdeda"),
  HomePageModel(
      mainImage: "assets/images/school4.png",
      arabicSchoolName: " مدرسه البارون للغات ",
      englishSchoolName: "Baron Language School",
      typeSchool: "National",
      logo: "assets/images/schoolIcon5.png",
      price: "Fees start  25,650 LE",
      location: "Misr El-gdeda"),
];
//TODO: change the list body