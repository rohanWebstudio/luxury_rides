import 'package:flutter/material.dart';

class EditProfilePage
    extends
        StatefulWidget {
  const EditProfilePage({
    super.key,
  });

  @override
  State<
    EditProfilePage
  >
  createState() =>
      _EditProfilePageState();
}

class _EditProfilePageState
    extends
        State<
          EditProfilePage
        > {
  String
  gender =
      "Male";

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(
            context,
          ),
        ),
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(
            16.0,
          ),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      "https://i.pinimg.com/736x/84/8f/3b/848f3b92a3e2a6040faccad5888f851e.jpg",
                    ),
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.amber,
                    child: const Icon(
                      Icons.camera_alt,
                      color: Colors.black,
                      size: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              _buildTextField(
                "Full Name",
                "Alex Turner",
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 55,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.amber,
                        ),
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                      child: Row(
                        children: const [
                          Text(
                            "+971",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 4,
                    child: _buildTextField(
                      "",
                      "4 123 4567",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              _buildTextField(
                "Email",
                "alex.turner@example.com",
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Gender",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  _genderOption(
                    "Male",
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  _genderOption(
                    "Female",
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  _genderOption(
                    "Other",
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              _buildDateField(
                "Date of birth",
                "14/08/1995",
              ),
              const SizedBox(
                height: 20,
              ),
              _buildTextField(
                "Bio",
                "Hi! i am this....",
                maxLines: 3,
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.amber,
                      Colors.brown,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget
  _buildTextField(
    String
    label,
    String
    hint, {
    int maxLines =
        1,
  }) {
    return TextField(
      maxLines: maxLines,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        labelText: label.isNotEmpty
            ? label
            : null,
        labelStyle: const TextStyle(
          color: Colors.grey,
        ),
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.amber,
          ),
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.amber,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      ),
    );
  }

  Widget
  _buildDateField(
    String
    label,
    String
    hint,
  ) {
    return TextField(
      readOnly: true,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.grey,
        ),
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        suffixIcon: const Icon(
          Icons.calendar_today,
          color: Colors.amber,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.amber,
          ),
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.amber,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      ),
    );
  }

  Widget
  _genderOption(
    String
    value,
  ) {
    return Row(
      children: [
        Radio<
          String
        >(
          value: value,
          groupValue: gender,
          activeColor: Colors.amber,
          onChanged:
              (
                val,
              ) {
                setState(
                  () {
                    gender = val!;
                  },
                );
              },
        ),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
