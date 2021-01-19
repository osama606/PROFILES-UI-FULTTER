import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/profiles/profile1/user.dart';
import 'provider.dart';

class profile1 extends StatefulWidget {
  @override
  _profile1State createState() => _profile1State();
}

class _profile1State extends State<profile1> {
  profile Profile = profile1provider.getprofile();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/profiles/img1.png",
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.45,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.wrap_text_outlined),
            ),
            title: Text(
              "PROFILE",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: [IconButton(icon: Icon(Icons.settings), onPressed: () {})],
          ),
          body: Stack(
            children: [
              CustomPaint(
                painter: ProfilePainter(),
                child: Container(),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.06,
                top: MediaQuery.of(context).size.height * 0.25,
                child: CircleAvatar(
                  minRadius: 40,
                  backgroundImage: ExactAssetImage("assets/image/Osama.png"),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.35,
                left: 26,
                right: 24,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        Profile.user.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 32),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          Profile.user.address,
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 32, bottom: 16),
                      child: Text(
                        "ABOUT ME",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        Profile.user.about,
                        style: TextStyle(
                          fontSize: 22,
                          height: 1.2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: 50,
                  left: 24,
                  right: 24,
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
                          Text(Profile.followers.toString())
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
                          Text(Profile.follwing.toString())
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Froends",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(Profile.froends.toString())
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ],
    );
  }
}

class ProfilePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();
    paint.color = Colors.white;
    path.lineTo(0, size.height * 0.31);
    path.lineTo(size.width, size.height * 0.38);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.25);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
