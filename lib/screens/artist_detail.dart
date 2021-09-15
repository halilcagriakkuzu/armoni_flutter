import 'package:akorcum/screens/user_profile.dart';
import 'package:akorcum/utils/user_preferences.dart';
import 'package:akorcum/widgets/appbar_widget.dart';
import 'package:akorcum/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class ArtistDetail extends StatelessWidget {
  const ArtistDetail({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.library_music_rounded,
                        color: Colors.purple,
                      ),
                      title: Text('Şarkı Adı'),
                      trailing: Icon(Icons.star_border_rounded),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(
                      thickness: 2,
                      height: 0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.library_music_rounded,
                        color: Colors.purple,
                      ),
                      title: Text('Şarkı Adı'),
                      trailing: Icon(
                        Icons.star_rounded,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(
                      thickness: 2,
                      height: 0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.library_music_rounded,
                        color: Colors.purple,
                      ),
                      title: Text('Şarkı Adı'),
                      trailing: Icon(Icons.star_border_rounded),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(
                      thickness: 2,
                      height: 0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.library_music_rounded,
                        color: Colors.purple,
                      ),
                      title: Text('Şarkı Adı'),
                      trailing: Icon(
                        Icons.star_rounded,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(
                      thickness: 2,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
