import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/profiles/profile2/User.dart';

import 'provider.dart';

class profile2 extends StatefulWidget {
  @override
  _profile2State createState() => _profile2State();
}

class _profile2State extends State<profile2> {
  profile _profile = profile1provider.getprofile();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/profiles/img2.png",
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.wrap_text_outlined),
            ),
            actions: [IconButton(icon: Icon(Icons.settings), onPressed: () {})],
            title: Text("PROFILE"),
            centerTitle: true,
          ),
          body: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * 0.04,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 115,
                            width: 115,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: ExactAssetImage(
                                  "assets/image/steve.png",
                                ),
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      _profile.user.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        letterSpacing: 1.1,
                      ),
                    ),
                    Text(
                      _profile.user.address,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.30,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Followers",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(_profile.followers.toString())
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Follwing",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(_profile.follwing.toString())
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Friends",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(_profile.friends.toString())
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "ABOUT ME",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.1,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              _profile.user.about,
                              style: TextStyle(
                                letterSpacing: 1.2,
                                height: 1.4,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Frindes (${_profile.friends})",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            _imagelist(context),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _imagelist(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 2),
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
                "assets/image/steve.png",
              ),
              fit: BoxFit.none,
            )
          ),
        );
      })),
    );
  }
}
