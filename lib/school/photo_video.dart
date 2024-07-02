import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Photo(),
  ));
}

class Photo extends StatefulWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  Map<String, File?> _selectedImages = {
    'Add Background': null,
    'Add Photo 1': null,
    'Add Photo 2': null,
    'Add Photo 3': null,
    'Add Photo 4': null,
    'Add Photo 5': null,
    'Add Photo 6': null,
    'Add Photo 7': null,
    'Add Photo 8': null,
    'Add Photo 9': null,
  };

  @override
  void initState() {
    super.initState();
    _loadImages();
  }

  Future<void> _loadImages() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedImages.forEach((key, value) {
        final path = prefs.getString(key);
        if (path != null) {
          _selectedImages[key] = File(path);
        }
      });
    });
  }

  Future<void> _saveImagePath(String title, String path) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(title, path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Edit your Photos",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: Offset(0, 10),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: _selectedImages['Add Background'] != null
                            ? DecorationImage(
                          fit: BoxFit.cover,
                          image: FileImage(_selectedImages['Add Background']!),
                        )
                            : const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/camera.png'),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          color: Colors.grey,
                        ),
                        child: InkWell(
                          onTap: () {
                            _showImagePicker(context, 'Add Background');
                          },
                          child: const Icon(Icons.add_a_photo, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 14),
                  child: Text(
                    'Edit Your Logo Picture',
                    style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      _buildPhotoItem(context, 'Add Photo 1'),
                      const SizedBox(height: 20),
                      _buildPhotoItem(context, 'Add Photo 2'),
                      const SizedBox(height: 20),
                      _buildPhotoItem(context, 'Add Photo 3'),
                      const SizedBox(height: 20),
                      _buildPhotoItem(context, 'Add Photo 4'),
                      const SizedBox(height: 20),
                      _buildPhotoItem(context, 'Add Photo 5'),
                      const SizedBox(height: 20),
                      _buildPhotoItem(context, 'Add Photo 6'),
                      const SizedBox(height: 20),
                      _buildPhotoItem(context, 'Add Photo 7'),
                      const SizedBox(height: 20),
                      _buildPhotoItem(context, 'Add Photo 8'),
                      const SizedBox(height: 20),
                      _buildPhotoItem(context, 'Add Photo 9'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPhotoItem(BuildContext context, String title) {
    return Material(
      color: Colors.blueGrey,
      borderRadius: BorderRadius.circular(15),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: () {
          _showImagePicker(context, title);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Ink.image(
              image: _selectedImages[title] != null
                  ? FileImage(_selectedImages[title]!)
                  : AssetImage('assets/camera.png') as ImageProvider,
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            Text(title),
            const Icon(Icons.add),
          ],
        ),
      ),
    );
  }

  void _showImagePicker(BuildContext context, String title) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Camera'),
                onTap: () {
                  Navigator.pop(context);
                  _getImage(ImageSource.camera, title);
                },
              ),
              ListTile(
                leading: const Icon(Icons.image),
                title: const Text('Gallery'),
                onTap: () {
                  Navigator.pop(context);
                  _getImage(ImageSource.gallery, title);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _getImage(ImageSource source, String title) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _selectedImages[title] = File(pickedFile.path);
      });
      _saveImagePath(title, pickedFile.path);
    }
  }
}