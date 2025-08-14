import 'package:flutter/material.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_10/textform.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_11/model/user.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_11/sqflite/db_helper.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List<User> users = [];
  @override
  void initState() {
    super.initState();
    getUser();
  }

  final TextEditingController emailController = TextEditingController();
  // final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> getUser() async {
    final dataUser = await DbHelper.getAllUsers();
    print(dataUser);
    setState(() {
      users = dataUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 4,
          children: [
            // TextFormConst(hintText: "Nama", controller: nameController),
            TextFormConst(hintText: "Email", controller: emailController),
            TextFormConst(hintText: "Password", controller: passwordController),
            ElevatedButton(
              onPressed: () async {
                final email = emailController.text.trim();
                final password = passwordController.text.trim();
                // final name = nameController.text.trim();
                // if (email.isEmpty || password.isEmpty || name.isEmpty) {
                if (email.isEmpty || password.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Email dan Password tidak boleh kosong!"),
                    ),
                  );
                  return;
                  // getUser();
                  // setState(() {});
                }
                // final user = User(email: email, password: password, name: name);
                final user = User(email: email, password: password);
                await DbHelper.registerUser(user);
                Future.delayed(const Duration(seconds: 1)).then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Pendaftaran akun berhasil")),
                  );
                });
                getUser();
                setState(() {});
              },
              child: Text("Simpan Data Akun"),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                final dataUserLogin = users[index];
                return ListTile(
                  title: Text(dataUserLogin.email),
                  subtitle: Text(dataUserLogin.password),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
