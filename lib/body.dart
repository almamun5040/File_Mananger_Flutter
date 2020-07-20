import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            mainBody(),
            Padding(
              padding: EdgeInsets.only(right: 25, left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Categorise",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("Total 22 Files")
                    ],
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            listfolder(
              icon1: "assets/images/file.png",
              icon2: "assets/images/app.png",
              title1: "MyFile",
              file1: "1200",
              title2: "APP",
              file2: "200",
            ),
            listfolder(
              icon1: "assets/images/game.png",
              icon2: "assets/images/video.png",
              title1: "Game",
              file1: "1200",
              title2: "Video",
              file2: "200",
            ),
            listfolder(
              icon1: "assets/images/picture.png",
              icon2: "assets/images/music.png",
              title1: "Picture",
              file1: "1200",
              title2: "Music",
              file2: "200",
            )
          ],
        ),
      ),
    );
  }

  Container mainBody() {
    return Container(
      height: 410,
      child: Stack(
        children: <Widget>[topBar(), scroll()],
      ),
    );
  }

  Container topBar() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Text(
                "Hello ! ",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Spacer(),
              Icon(
                Icons.settings_applications,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          Text("   Almamun Khandakar",
              style: TextStyle(color: Colors.white, fontSize: 30)),
          Text("     Let's Clean Up your code",
              style: TextStyle(color: Colors.white, fontSize: 18))
        ],
      ),
    );
  }

  Container scroll() {
    return Container(
      margin: EdgeInsets.only(
        top: 150,
      ),
      height: 240,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(
            width: 40,
          ),
          Container(
              margin: EdgeInsets.only(right: 25),
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            child: Image.asset(
                              "assets/images/doc.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Image.asset(
                            "assets/images/3dots.png",
                            fit: BoxFit.cover,
                            scale: 15,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "File Box",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Container(
                        height: 30,
                        child: Column(
                          children: <Widget>[
                            LinearPercentIndicator(
                              width: 160.0,
                              lineHeight: 12.0,
                              percent: 0.5,
                              progressColor: Colors.yellowAccent,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5, left: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "35.5 GB",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "80 GB",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 160,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.red[900],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: EdgeInsets.all(7.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    height: 50,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: Center(
                                      child: Text(
                                        "Clean",
                                        style: TextStyle(fontSize: 15),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                                ShaderMask(
                                  shaderCallback: (rect) {
                                    return LinearGradient(colors: [
                                      Colors.white24,
                                      Colors.black
                                    ]).createShader(rect);
                                  },
                                  child: Text(
                                    ">>>>>",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
          Container(
              margin: EdgeInsets.only(right: 25),
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            child: Image.asset(
                              "assets/images/drive.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Image.asset(
                            "assets/images/3dots.png",
                            fit: BoxFit.cover,
                            scale: 15,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "G Drive",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Container(
                        height: 30,
                        child: Column(
                          children: <Widget>[
                            LinearPercentIndicator(
                              width: 160.0,
                              lineHeight: 12.0,
                              percent: 0.5,
                              progressColor: Colors.yellowAccent,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5, left: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "25.5 GB",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "100 GB",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 160,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue[800],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: EdgeInsets.all(7.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    height: 50,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: Center(
                                      child: Text(
                                        "Clean",
                                        style: TextStyle(fontSize: 15),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                                ShaderMask(
                                  shaderCallback: (rect) {
                                    return LinearGradient(colors: [
                                      Colors.white24,
                                      Colors.black
                                    ]).createShader(rect);
                                  },
                                  child: Text(
                                    ">>>>>",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class listfolder extends StatelessWidget {
  const listfolder({
    Key key,
    this.title1,
    this.file1,
    this.folder1,
    this.title2,
    this.file2,
    this.folder2,
    this.icon1,
    this.icon2,
  }) : super(key: key);
  final String title1, file1, folder1, icon1;
  final String title2, file2, folder2, icon2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 70,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Stack(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/folder.png",
                            ),
                            Positioned(
                              top: 20,
                              left: 5,
                              child: Image.asset(
                                icon1,
                                scale: 20,
                              ),
                            )
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                title1,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                file1,
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                height: 70,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Row(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Stack(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/folder.png",
                            ),
                            Positioned(
                              top: 20,
                              left: 5,
                              child: Image.asset(
                                icon2,
                                scale: 20,
                              ),
                            )
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                title2,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                file2,
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
