import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Test App',
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: <Widget>[
              ClipRect(
                child: Container(
                  height: 140.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              child: Center(
                                child: Image.asset(
                                  'assets/images/image.png',
                                  height: 40.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    'Awesome! You are',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    '#309 out of 1,000,002',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 25.0,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    'In the longest streak category',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(
                                  left: 8.0,
                                  right: 8.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text(
                                  'Longest Streak',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                '|',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Highest Score',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                '|',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Most Share',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // creating the list of contacts here
              MyListTileWidget(
                iconImage: Image.asset(
                  'assets/images/image.png',
                  height: 40.0,
                ),
                title: '@JohnC 🔥🔥🔥🔥',
                subtitleText: '212 Days in a row',
                trailingText: '#1',
              ),
              MyListTileWidget(
                iconImage: Image.asset(
                  'assets/images/image_women_1.jpg',
                  height: 40.0,
                ),
                title: '@casey12 🔥🔥🔥',
                subtitleText: '212 Days in a row',
                trailingText: '#2',
              ),
              MyListTileWidget(
                iconImage: Image.asset(
                  'assets/images/image_women_2.jpg',
                  height: 40.0,
                ),
                title: '@LiLY101 🔥🔥',
                subtitleText: '212 Days in a row',
                trailingText: '#3',
              ),
              MyListTileWidget(
                iconImage: Image.asset(
                  'assets/images/image_women_3.jpg',
                  height: 60.0,
                ),
                title: '@itsbecky 🔥',
                subtitleText: '212 Days in a row',
                trailingText: '#4',
              ),
              MyListTileWidget(
                iconImage: Image.asset(
                  'assets/images/image_women_4.jpg',
                  height: 40.0,
                ),
                title: '@Johnny',
                subtitleText: '212 Days in a row',
                trailingText: '#5',
              ),
              MyListTileWidget(
                iconImage: Image.asset(
                  'assets/images/image.png',
                  height: 40.0,
                ),
                title: '@Johnny',
                subtitleText: '212 Days in a row',
                trailingText: '#6',
              ),
              // MyListTileWidget(
              //   iconImage: Image.asset(
              //     'assets/images/head_person.jpg',
              //     height: 30.0,
              //   ),
              //   title: '@Johnny',
              //   subtitleText: '212 Days in a row',
              //   trailingText: '#7',
              // ),
              // creating a bottom navigation bar
              Container(
                color: Colors.white.withOpacity(0.5),
                // height: 120.0,
                // color: Colors.black,
                // color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    NewPaddedColumnWidget(
                      icon: Icons.message,
                      displayText: 'Messages',
                    ),
                    NewPaddedColumnWidget(
                      icon: Icons.home,
                      displayText: 'Home',
                    ),
                    // SizedBox(
                    //   width: 10.0,
                    // ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      FontAwesomeIcons.images,
                    ),
                    // SizedBox(
                    //   width: 10.0,
                    // ),
                    Column(
                      children: <Widget>[
                        NewPaddedColumnWidget(
                          icon: FontAwesomeIcons.idBadge,
                          displayText: 'Leader Board',
                        ),
                        // SizedBox(
                        //   height: 1.0,
                        // ),
                        Container(
                          height: 4.0,
                          width: 70.0,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          child: Image.asset(
                            'assets/images/image.png',
                            height: 40.0,
                          ),
                        ),
                        Text(
                          'Me',
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NewPaddedColumnWidget extends StatelessWidget {
  // the property below is used to add icons to the column
  final IconData icon;
  //  the property below is used to display the text
  final String displayText;

  NewPaddedColumnWidget({
    @required this.icon,
    this.displayText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(icon),
          Text(displayText),
        ],
      ),
    );
  }
}

// creating a custom list tile widget
class MyListTileWidget extends StatelessWidget {
  // the property below is used to display the icon Image
  final Image iconImage;
  // the property below is used to display the title
  final String title;
  //  the property below is used to display the subtitle text
  final String subtitleText;
  // the property below is used to display the trailing text
  final String trailingText;

  MyListTileWidget({
    @required this.iconImage,
    @required this.title,
    @required this.subtitleText,
    @required this.trailingText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[300],
          ),
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          // child: Image.asset(
          //   'assets/images/head_person.jpg',
          //   height: 30.0,
          // ),
          child: iconImage,
        ),
        title: Text(
          // '@JohnC 🔥🔥🔥🔥',
          title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          // '212 Days in a row',
          subtitleText,
          style: TextStyle(
            color: Colors.grey[700],
          ),
        ),
        trailing: Text(
          // '#1',
          trailingText,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}
