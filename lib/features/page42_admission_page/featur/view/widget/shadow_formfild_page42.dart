import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:online_school_admission/features/page42_admission_page/featur/view/widget/button_page42.dart';
import 'package:online_school_admission/core/widgets/shadow_text_form.dart';

import '../../../../../Payment.dart';
import '../../../../../parent/page10_home/featur/view/home_page_view.dart';

class ShadowFormfildPage42 extends StatefulWidget {
  const ShadowFormfildPage42({super.key});

  @override
  State<ShadowFormfildPage42> createState() => _ShadowFormfildPage42State();
}

class _ShadowFormfildPage42State extends State<ShadowFormfildPage42> {
  CollectionReference admission = FirebaseFirestore.instance.collection('admission');
  bool isLoading = false;

  TextEditingController FathersFullName = TextEditingController();
  TextEditingController FatherNationality = TextEditingController();
  TextEditingController FatherIdNumber = TextEditingController();
  TextEditingController FatherQualifications = TextEditingController();
  TextEditingController FatherJob = TextEditingController();
  TextEditingController HomeAddress = TextEditingController();
  TextEditingController FathersEmailAddress = TextEditingController();
  TextEditingController FathersMobileNumber = TextEditingController();
  TextEditingController HomePhoneNumber = TextEditingController();
  TextEditingController FathersWhatsAppNumber = TextEditingController();
  TextEditingController MothersFullName = TextEditingController();
  TextEditingController MothersNationality = TextEditingController();
  TextEditingController MothersIdNumber = TextEditingController();
  TextEditingController MothersQualifications = TextEditingController();
  TextEditingController MothersEmailAddress = TextEditingController();
  TextEditingController MothersWhatsAppNumber = TextEditingController();

  void sendData() {
    setState(() {
      isLoading = true;
    });

    admission.add({
      'Father’s Full Name': FathersFullName.text,
      'Father’s Nationality': FatherNationality.text,
      'Father’s Id Number': FatherIdNumber.text,
      'Father’s Qualifications': FatherQualifications.text,
      'Father’s Job': FatherJob.text,
      'Home Address': HomeAddress.text,
      'Father’s Email Address': FathersEmailAddress.text,
      'Father’s Mobile Number': FathersMobileNumber.text,
      'Home Phone Number': HomePhoneNumber.text,
      'Father’s WhatsApp Number': FathersWhatsAppNumber.text,
      'Mother’s Full Name': MothersFullName.text,
      'Mother’s Nationality': MothersNationality.text,
      'Mother’s Id Number': MothersIdNumber.text,
      'Mother’s Qualifications': MothersQualifications.text,
      'Mother’s Email Address': MothersEmailAddress.text,
      'Mother’s WhatsApp Number': MothersWhatsAppNumber.text,
      'uid': FirebaseAuth.instance.currentUser?.uid,
    }).then((value) {
      setState(() {
        isLoading = false;
        FathersFullName.clear();
        FatherNationality.clear();
        FatherIdNumber.clear();
        FatherQualifications.clear();
        FatherJob.clear();
        HomeAddress.clear();
        FathersEmailAddress.clear();
        FathersMobileNumber.clear();
        HomePhoneNumber.clear();
        FathersWhatsAppNumber.clear();
        MothersFullName.clear();
        MothersNationality.clear();
        MothersIdNumber.clear();
        MothersQualifications.clear();
        MothersEmailAddress.clear();
        MothersWhatsAppNumber.clear();
      });
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const PaymentScreen()),
      );
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('تمت العملية بنجاح'),
            content: Text('تمت إضافة البيانات بنجاح .'),
            actions: <Widget>[
              TextButton(
                child: Text('موافق'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }).catchError((error) {
      setState(() {
        isLoading = false;
      });

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('خطأ في العملية'),
            content: Text('حدث خطأ أثناء إضافة البيانات . $error'),
            actions: <Widget>[
              TextButton(
                child: Text('موافق'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PaymentScreen()),
                  );
                },
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowTextForm(
          controller: FathersFullName,
          hintText: "Father’s Full Name",
        ),
        ShadowTextForm(
          controller: FatherNationality,
          hintText: "Father’s Nationality",
        ),
        ShadowTextForm(
          controller: FatherIdNumber,
          hintText: "Father’s Id Number",
        ),
        ShadowTextForm(
          controller: FatherQualifications,
          hintText: "Father’s Qualifications",
        ),
        ShadowTextForm(
          controller: FatherJob,
          hintText: "Father’s Job",
        ),
        ShadowTextForm(
          controller: HomeAddress,
          hintText: "Home Address",
        ),
        ShadowTextForm(
          controller: FathersEmailAddress,
          hintText: "Father’s Email Address",
        ),
        ShadowTextForm(
          controller: FathersMobileNumber,
          hintText: "Father’s Mobile Number",
        ),
        ShadowTextForm(
          controller: HomePhoneNumber,
          hintText: "Home Phone Number",
        ),
        ShadowTextForm(
          controller: FathersWhatsAppNumber,
          hintText: "Father’s WhatsApp Number",
        ),
        ShadowTextForm(
          controller: MothersFullName,
          hintText: "Mother’s Full Name",
        ),
        ShadowTextForm(
          controller: MothersNationality,
          hintText: "Mother’s Nationality",
        ),
        ShadowTextForm(
          controller: MothersIdNumber,
          hintText: "Mother’s Id Number",
        ),
        ShadowTextForm(
          controller: MothersQualifications,
          hintText: "Mother’s Qualifications",
        ),
        ShadowTextForm(
          controller: MothersEmailAddress,
          hintText: "Mother’s Email Address",
        ),
        ShadowTextForm(
          controller: MothersWhatsAppNumber,
          hintText: "Mother’s WhatsApp Number",
        ),
        ButtonPage42(
          onPressed: () {
            sendData(); // استدعاء الدالة sendData عند الضغط على الزر
          },
        ),
      ],
    );
  }
}