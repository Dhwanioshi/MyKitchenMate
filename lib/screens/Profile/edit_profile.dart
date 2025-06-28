import 'package:flutter/material.dart';
import 'package:mykitchenapp/screens/Profile/profile_page.dart';
import 'package:mykitchenapp/widgets/appbar.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController(
    text: "Dhwani Joshi",
  );
  final TextEditingController usernameController = TextEditingController(
    text: 'd_j229',
  );
  final TextEditingController phoneController = TextEditingController(
    text: '+91 9090909090',
  );
  final TextEditingController emailController = TextEditingController(
    text: 'dj193@email.com',
  );

  String selectedGender = 'Female';
  final List<String> genderOptions = ['Male', 'Female', 'Other'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar("Edit Profile"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 48),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(height: 10),
              _buildTextField('Name', nameController),
              const SizedBox(height: 16),
              _buildTextField('Username', usernameController),
              const SizedBox(height: 16),
              _buildDropdown('Gender'),
              const SizedBox(height: 16),
              _buildTextField(
                'Phone Number',
                phoneController,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
              _buildTextField(
                'Email',
                emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 32),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(86, 106, 79, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                        return ProfilePage();
                      }));
                    }
                  },
                  child: const Text(
                    'Save',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
    String label,
    TextEditingController controller, {
    TextInputType? keyboardType,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
        const SizedBox(height: 6), // gap between label and field
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          style: const TextStyle(fontSize: 14),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(100, 160, 160, 150),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 12,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdown(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
        const SizedBox(height: 6), // gap between label and field
        InputDecorator(
          decoration: InputDecoration(
            filled: true,
            isDense: true,
            fillColor: const Color.fromARGB(100, 160, 160, 150),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedGender,
              isExpanded: true,
              items: genderOptions.map((String gender) {
                return DropdownMenuItem<String>(
                  value: gender,
                  child: Text(gender),
                );
              }).toList(),
              onChanged: (String? newGender) {
                setState(() {
                  selectedGender = newGender!;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
