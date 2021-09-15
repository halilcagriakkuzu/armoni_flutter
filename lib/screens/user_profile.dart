import 'package:akorcum/models/users.dart';
import 'package:akorcum/screens/login_screen.dart';
import 'package:akorcum/theme.dart';
import 'package:akorcum/utils/user_preferences.dart';
import 'package:akorcum/widgets/appbar_widget.dart';
import 'package:akorcum/widgets/primary_button.dart';
import 'package:akorcum/widgets/profile_widget.dart';
import 'package:akorcum/widgets/secondary_button.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          SizedBox(
            height: 20,
          ),
          buildName(user),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: kDefaultPadding,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 10,
              child: Column(
                children: [
                  Padding(
                    padding: kDefaultPadding,
                    child: SecondaryButton(buttonText: 'Şifre Değiştir'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: kDefaultPadding,
                    child: SecondaryButton(buttonText: 'Akor Gönder'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: kDefaultPadding,
                    child: SecondaryButton(buttonText: 'Arkadaşını Davet Et'),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: kDefaultPadding,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: PrimaryButton(buttonText: 'Çıkış Yap')),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildName(User user) => Column(
      children: [
        Text(
          user.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: kPrimaryColor,
          ),
        ),
        Text(
          user.email,
          style: TextStyle(
            fontSize: 14,
            color: kPrimaryColor,
          ),
        )
      ],
    );
