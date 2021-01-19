import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/profiles/profile3/User.dart';
import "provider.dart";

class profil3 extends StatefulWidget {
  @override
  _profil3State createState() => _profil3State();
}

class _profil3State extends State<profil3> {
  profile _profile = profile1provider.getprofile();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/profiles/teck.png",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 28,
              ),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                  size: 28,
                ),
                onPressed: () {},
              ),
            ],
          ),
          body: Stack(
            children: [
              _bodycontent(context),
              _profileimage(context),
            ],
          ),
        ),
      ],
    );
  }

  _bodycontent(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.07,
      left: 18,
      right: 18,
      bottom: 0,
      child: Container(
        padding: EdgeInsets.only(top: 74),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
          color: Colors.white,
        ),
        child: ListView(
          children: [
            Text(
              _profile.user.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                Text(
                  _profile.user.address,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            _followButton(context),
            SizedBox(
              height: 16,
            ),
            _divider(context),
            SizedBox(
              height: 20,
            ),
            _counters(context),
            SizedBox(
              height: 20,
            ),
            _divider(context),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                "photos(${_profile.photos.toString()})",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ),
            _photoslist(context),
            Padding(
              padding: const EdgeInsets.only(top: 26, left: 24, bottom: 10),
              child: Text(
                "ABOUT ME",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.w900),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                _profile.user.about,
                style: TextStyle(letterSpacing: 1, height: 1.3),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "FRINDES  (234)",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                ),
              ),
            ),
            _imagelist(context),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  _profileimage(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.07 - 50,
      left: MediaQuery.of(context).size.width / 2 - 50,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: ExactAssetImage(
                "assets/image/Osama.png",
              ),
              fit: BoxFit.fitWidth,
            )),
      ),
    );
  }

  _followButton(BuildContext context) {
    return Align(
      child: MaterialButton(
        elevation: 10,
        color: Colors.blue,
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Text(
            "FOLLOW",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
              fontSize: 16,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
      ),
    );
  }

  _divider(BuildContext context) {
    return Container(
      height: 1,
      color: Colors.grey,
    );
  }

  _counters(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              "Followers",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              _profile.followers.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        Column(
          children: [
            Text(
              "Follwing",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              _profile.follwing.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        Column(
          children: [
            Text(
              "Friends",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              _profile.friends.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }

  _photoslist(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 20),
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          _profile.photos,
          (index) {
            return Container(
              margin: EdgeInsets.only(right: 18),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: ExactAssetImage(
                    "assets/profiles/bool.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}

_imagelist(BuildContext context) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(
      left: 20,
    ),
    height: 75,
    child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(20, (index) {
          return Container(
            width: 75,
            margin: EdgeInsets.only(right: 24),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: ExactAssetImage(
                    "assets/image/Osama.png",
                  ),
                  fit: BoxFit.fitWidth,
                )),
          );
        })),
  );
}
