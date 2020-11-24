import 'package:flutter/material.dart';

///class UserProfile digunakan untuk menampilkan profile user dengan indah
class UserProfile extends StatelessWidget {
  /// field ini digunakan unruk menyimpan nama user
  final String name;
  final String role;
  final String photoURL;

  /// * [name] berisi *nama user* nilai daefult nya adalah "no name".
  ///
  /// * [role] berisi peran dari user. nilai defaultnya 'no role'.
  ///
  /// * [photoURL] berisi **link foto** user. nilai defaultnya foto asli
  ///
  ///  Contoh:
  ///
  /// '''
  /// final UserProfile profile = UserProfile(
  /// name: "nama user",
  /// role: "peran user",
  /// photoURL: "assets/Bayu.jpg",
  /// );
  /// '''
  UserProfile({this.name = "No Name", this.role = "No Role", this.photoURL});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage((photoURL != null) ? photoURL : "assets/Bayu.jpg"),
          fit: BoxFit.cover,
          width: 200,
          height: 200,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "[" + role + "]",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
