// profile_screen.dart
import 'package:flutter/material.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_15/api/register_user.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_15/model/get_user_model.dart';
// import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_15/model/update_profile_model.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  static const id = "/profile_screen";

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  GetUserModel? _userData;
  bool _isLoading = true;
  bool _isEditing = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final userData = await AuthenticationAPI.getProfile();
      setState(() {
        _userData = userData;
        _nameController.text = userData.data?.name ?? '';
        _emailController.text = userData.data?.email ?? '';
      });
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _updateProfile() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final updatedData = await AuthenticationAPI.updateProfile(
        name: _nameController.text.trim(),
        email: _emailController.text.trim(),
      );

      setState(() {
        _userData = GetUserModel(
          message: updatedData.message,
          data: updatedData.data != null
              ? Data(
                  id: updatedData.data!.id,
                  name: updatedData.data!.name,
                  email: updatedData.data!.email,
                  emailVerifiedAt: updatedData.data!.emailVerifiedAt,
                  createdAt: updatedData.data!.createdAt,
                  updatedAt: updatedData.data!.updatedAt,
                )
              : null,
        );
        _isEditing = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(updatedData.message ?? "Profile updated successfully"),
        ),
      );
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_isEditing ? "Edit Profile" : "My Profile"),
        actions: [
          if (!_isEditing)
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                setState(() {
                  _isEditing = true;
                });
              },
            ),
          if (_isEditing)
            IconButton(icon: const Icon(Icons.save), onPressed: _updateProfile),
          if (_isEditing)
            IconButton(
              icon: const Icon(Icons.cancel),
              onPressed: () {
                setState(() {
                  _isEditing = false;
                  // Reset ke data asli
                  _nameController.text = _userData?.data?.name ?? '';
                  _emailController.text = _userData?.data?.email ?? '';
                });
              },
            ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _errorMessage != null
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Error: $_errorMessage",
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _loadProfileData,
                    child: const Text("Retry"),
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // User ID
                  const Text(
                    "User ID:",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    _userData?.data?.id?.toString() ?? "N/A",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 20),

                  // Name Field
                  const Text(
                    "Name:",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    controller: _nameController,
                    enabled: _isEditing,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your name",
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Email Field
                  const Text(
                    "Email:",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    controller: _emailController,
                    enabled: _isEditing,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your email",
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20),

                  // Email Verification Status
                  const Text(
                    "Email Verified:",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    _userData?.data?.emailVerifiedAt == null
                        ? "Not Verified"
                        : "Verified",
                    style: TextStyle(
                      color: _userData?.data?.emailVerifiedAt == null
                          ? Colors.red
                          : Colors.green,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Account Created Date
                  const Text(
                    "Member Since:",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(_userData?.data?.createdAt ?? "N/A"),
                ],
              ),
            ),
    );
  }
}
