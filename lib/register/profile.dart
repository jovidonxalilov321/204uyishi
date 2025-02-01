import 'package:dars302/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  String? _selectedViloyat;
  final List<String> _viloyatlar = [
    "Toshkent",
    "Samarqand",
    "Buxoro",
    "Farg‘ona",
    "Namangan",
    "Andijon",
    "Xorazm",
    "Qashqadaryo",
    "Surxondaryo",
    "Jizzax",
    "Navoiy",
    "Sirdaryo",
    "Qoraqalpog‘iston"
  ];

  Future<void> _pickImage(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  void _showImagePickerOptions() {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(15),
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: const Icon(Icons.camera),
              title: const Text("Kamera orqali rasmga olish"),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.camera);
              },
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text("Galereyadan tanlash"),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.gallery);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Kodni kiriting',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: "Urbanist",
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: SvgPicture.asset('TravelAssets/icons/back-arrow.svg', height: 24, color: AppColors.Yashil,),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.grey[300],
                    backgroundImage: _image != null ? FileImage(_image!) : null,
                    child: _image == null
                        ? const Icon(Icons.person, size: 70, color: Colors.white)
                        : null,
                  ),
                  GestureDetector(
                    onTap: _showImagePickerOptions,
                    child: SvgPicture.asset('TravelAssets/icons/Exclude.svg', width: 30, height: 30),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              _buildTextField('Ismingiz'),
              const SizedBox(height: 20),
              _buildTextField('Familiyangiz'),
              const SizedBox(height: 20),
              _buildTextField('Telefon raqamingiz', keyboardType: TextInputType.phone),
              const SizedBox(height: 20),
              _buildDropdown(),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(160),
                  ),
                  minimumSize: const Size(350, 56),
                ),
                onPressed: () {},
                child: const Text(
                  "Saqlash",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Urbanist",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText, {TextInputType keyboardType = TextInputType.text}) {
    return Container(
      width: 350,
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        keyboardType: keyboardType,
        inputFormatters: keyboardType == TextInputType.phone
            ? [FilteringTextInputFormatter.allow(RegExp(r'[0-9+]'))]
            : null,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: Color(0xff9E9E9E),
            fontSize: 14,
            fontFamily: "Urbanist",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildDropdown() {
    return Container(
      width: 350,
      height: 56,
      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          border: InputBorder.none,
        ),
        hint: Text("Viloyatingiz", style: TextStyle(color: Colors.grey[500], fontSize: 16)),
        value: _selectedViloyat,
        icon: Icon(Icons.arrow_drop_down, color: Colors.grey),
        items: _viloyatlar.map((String viloyat) => DropdownMenuItem(value: viloyat, child: Text(viloyat))).toList(),
        onChanged: (String? newValue) => setState(() => _selectedViloyat = newValue),
      ),
    );
  }
}
