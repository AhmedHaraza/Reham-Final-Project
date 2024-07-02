import 'package:flutter/material.dart';
import 'package:online_school_admission/core/utils/app_theme_manager.dart';

class CustomSchoohItem extends StatelessWidget {
  const CustomSchoohItem({
    super.key,
    required this.schoolImage,
    required this.schoolIcon,
    required this.schoolnameAr,
    required this.schoolnameEn,
    required this.education,
    required this.location,
    required this.price,
  });
  final String schoolImage;
  final String schoolIcon;
  final String schoolnameAr;
  final String schoolnameEn;
  final String education;
  final String location;
  final String price;

  @override
  Widget build(BuildContext context) {
    var mediaQuiry = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        border: Border.all(
          width: 1.3,
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: mediaQuiry.width,
            height: mediaQuiry.height * 0.3,
            decoration: BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage(schoolImage),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            width: mediaQuiry.width,
            height: mediaQuiry.height * 0.15,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 5,
                    right: 50,
                  ),
                  width: mediaQuiry.width * 0.6,
                  child: Text(
                    schoolnameAr,
                    style: AppThemeManager.textStyle16,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 60),
                  width: mediaQuiry.width * 0.6,
                  child: Text(
                    schoolnameEn,
                    style: AppThemeManager.textStyle16,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  children: [
                    const Spacer(
                      flex: 9,
                    ),
                    Text(
                      education,
                      style: AppThemeManager.textStyle14.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const ImageIcon(
                      AssetImage('assets/icons/educationIcon.png'),
                      color: Colors.green,
                      size: 25,
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      price,
                      style: AppThemeManager.textStyle14.copyWith(
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      width: mediaQuiry.width * 0.5,
                      child: Row(
                        children: [
                          const Spacer(
                            flex: 5,
                          ),
                          Text(
                            location,
                            style: AppThemeManager.textStyle14.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          const Spacer(
                            flex: 4,
                          ),
                          const CircleAvatar(
                            backgroundColor: Color(0xff96FFAD),
                            radius: 10,
                            child: Icon(
                              Icons.location_on_outlined,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: mediaQuiry.width * 0.63,
            bottom: mediaQuiry.height * 0.085,
            child: Container(
              width: mediaQuiry.width * 0.22,
              height: mediaQuiry.height * 0.1,
              decoration: BoxDecoration(
                // color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(schoolIcon),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
