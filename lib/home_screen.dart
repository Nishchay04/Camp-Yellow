import 'package:flutter/material.dart';
import 'package:round_1/common_size_helper.dart';
import 'package:round_1/common_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 50.0, right: 10.0, left: 10.0, bottom: 10.0),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(width: 3.5, color: Colors.amber),
                ),
                child: Stack(
                  children: [
                    Image.network(
                      'https://live.staticflickr.com/3119/3137151691_cfd505e8f9_z.jpg',
                      width: displayWidth(context) * 0.95,
                      height: displayHeight(context) * 0.35,
                    ),
                    Positioned(
                      bottom: 0.0,
                      child: Container(
                        width: displayWidth(context),
                        color: const Color(0xFF0E3311).withOpacity(0.5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: displayHeight(context) * 0.02,
                            ),
                            commonText(
                                '    Clan Name : Lorem Ipsum',
                                context,
                                displayWidth(context) * 0.05,
                                Colors.white,
                                FontWeight.w600),
                            SizedBox(
                              height: displayHeight(context) * 0.02,
                            ),
                            commonText(
                                '    28 members, 5 online',
                                context,
                                displayWidth(context) * 0.05,
                                Colors.white,
                                FontWeight.w500),
                            SizedBox(
                              height: displayHeight(context) * 0.02,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: displayWidth(context) * 0.05),
                width: displayWidth(context) * 0.9,
                child: const Divider(
                  color: Colors.white,
                  thickness: 2.5,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05,
                    right: displayWidth(context) * 0.05,
                    top: 10.0),
                child: commonText(
                    'Achievements',
                    context,
                    displayWidth(context) * 0.05,
                    Colors.amber,
                    FontWeight.w600),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05,
                    top: 5.0,
                    right: displayWidth(context) * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    commonText(
                        'Current Leauge',
                        context,
                        displayWidth(context) * 0.05,
                        Colors.pink,
                        FontWeight.w600),
                    Image.network(
                      'https://clipart.world/wp-content/uploads/2020/06/golden-shield-on-black-background.jpg',
                      width: displayWidth(context) * 0.3,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05,
                    top: 15.0,
                    right: displayWidth(context) * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    commonText(
                        'Leauge Ranking',
                        context,
                        displayWidth(context) * 0.05,
                        Colors.pink,
                        FontWeight.w600),
                    commonText('11th', context, displayWidth(context) * 0.07,
                        Colors.amber, FontWeight.w600),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05,
                    top: 15.0,
                    right: displayWidth(context) * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    commonText(
                        'Experience',
                        context,
                        displayWidth(context) * 0.05,
                        Colors.pink,
                        FontWeight.w600),
                    commonText('2000 xp', context, displayWidth(context) * 0.07,
                        Colors.amber, FontWeight.w500),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05,
                    top: 15.0,
                    right: displayWidth(context) * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    commonText(
                        '# of wins',
                        context,
                        displayWidth(context) * 0.05,
                        Colors.pink,
                        FontWeight.w600),
                    commonText('3', context, displayWidth(context) * 0.07,
                        Colors.amber, FontWeight.w600),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05, top: 10.0),
                width: displayWidth(context) * 0.9,
                child: const Divider(
                  color: Colors.white,
                  thickness: 2.5,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05,
                    right: displayWidth(context) * 0.05,
                    top: 10.0),
                child: commonText(
                    'Past featured performances',
                    context,
                    displayWidth(context) * 0.05,
                    Colors.amber,
                    FontWeight.w600),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05,
                    top: 15.0,
                    right: displayWidth(context) * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      'https://img.freepik.com/premium-photo/little-girl-headphones-sitting-table-using-laptop_484921-22505.jpg?w=996',
                      width: displayWidth(context) * 0.3,
                    ),
                    commonText(
                        'Priya in International\nDebating Leauge',
                        context,
                        displayWidth(context) * 0.05,
                        Colors.pink,
                        FontWeight.w600),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05,
                    top: 15.0,
                    right: displayWidth(context) * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      'https://img.freepik.com/premium-photo/little-girl-headphones-sitting-table-using-laptop_484921-22505.jpg?w=996',
                      width: displayWidth(context) * 0.3,
                    ),
                    commonText(
                        'Akshay in Global\nQuizzing Finals',
                        context,
                        displayWidth(context) * 0.05,
                        Colors.pink,
                        FontWeight.w600),
                  ],
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: commonText(
                      'see more',
                      context,
                      displayWidth(context) * 0.04,
                      Colors.amber,
                      FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: displayWidth(context) * 0.05),
                width: displayWidth(context) * 0.9,
                child: const Divider(
                  color: Colors.white,
                  thickness: 2.5,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05,
                    right: displayWidth(context) * 0.05,
                    top: 10.0),
                child: commonText(
                    'Live Clan Activities on Platform',
                    context,
                    displayWidth(context) * 0.05,
                    Colors.amber,
                    FontWeight.w600),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05,
                    top: 15.0,
                    right: displayWidth(context) * 0.05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(alignment: Alignment.center, children: [
                      Image.network(
                        'https://thumbs.dreamstime.com/b/mt-fujiin-autumn-fuji-fall-colors-japan-32630662.jpg',
                        width: displayWidth(context) * 0.9,
                        height: displayHeight(context) * 0.2,
                      ),
                      commonText(
                          'Live Trading\nChampionship',
                          context,
                          displayWidth(context) * 0.04,
                          Colors.white,
                          FontWeight.w600)
                    ]),
                    Stack(alignment: Alignment.center, children: [
                      Image.network(
                        'https://thumbs.dreamstime.com/b/mt-fujiin-autumn-fuji-fall-colors-japan-32630662.jpg',
                        width: displayWidth(context) * 0.9,
                        height: displayHeight(context) * 0.2,
                      ),
                      commonText(
                          'Tresure Hunt',
                          context,
                          displayWidth(context) * 0.04,
                          Colors.white,
                          FontWeight.w600)
                    ]),
                  ],
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: commonText(
                      'see more',
                      context,
                      displayWidth(context) * 0.04,
                      Colors.amber,
                      FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: displayWidth(context) * 0.05),
                width: displayWidth(context) * 0.9,
                child: const Divider(
                  color: Colors.white,
                  thickness: 2.5,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05,
                    right: displayWidth(context) * 0.05,
                    top: 10.0),
                child: commonText(
                    'Clan discussions',
                    context,
                    displayWidth(context) * 0.05,
                    Colors.amber,
                    FontWeight.w600),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05,
                    top: 15.0,
                    right: displayWidth(context) * 0.05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    commonText(
                        'Genral Thread:',
                        context,
                        displayWidth(context) * 0.05,
                        Colors.pink,
                        FontWeight.w400),
                    commonText(
                        '15 unread messages',
                        context,
                        displayWidth(context) * 0.05,
                        Colors.white,
                        FontWeight.w400),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05,
                    top: 15.0,
                    right: displayWidth(context) * 0.05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    commonText(
                        '(live) Anyone enthu for trading leauge..',
                        context,
                        displayWidth(context) * 0.05,
                        Colors.pink,
                        FontWeight.w400),
                    commonText(
                        '10 unread messages',
                        context,
                        displayWidth(context) * 0.05,
                        Colors.white,
                        FontWeight.w400),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05,
                    top: 15.0,
                    right: displayWidth(context) * 0.05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    commonText(
                        '(live) Anyone enthu for trading leauge..',
                        context,
                        displayWidth(context) * 0.05,
                        Colors.pink,
                        FontWeight.w400),
                    commonText(
                        '10 unread messages',
                        context,
                        displayWidth(context) * 0.05,
                        Colors.white,
                        FontWeight.w400),
                  ],
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: commonText(
                      'see more',
                      context,
                      displayWidth(context) * 0.04,
                      Colors.amber,
                      FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: displayWidth(context) * 0.05),
                width: displayWidth(context) * 0.9,
                child: const Divider(
                  color: Colors.white,
                  thickness: 2.5,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05,
                    right: displayWidth(context) * 0.05,
                    top: 10.0),
                child: commonText(
                    'Clan Members',
                    context,
                    displayWidth(context) * 0.05,
                    Colors.amber,
                    FontWeight.w600),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05,
                    top: 15.0,
                    right: displayWidth(context) * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      foregroundImage: NetworkImage(
                          'https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?w=2000'),
                    ),
                    commonText(
                        'Lorem Ipsum - Clan Head',
                        context,
                        displayWidth(context) * 0.05,
                        Colors.pink,
                        FontWeight.w600),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: displayWidth(context) * 0.05,
                    top: 15.0,
                    right: displayWidth(context) * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      foregroundImage: NetworkImage(
                          'https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?w=2000'),
                    ),
                    commonText(
                        'Lorem Ipsum - Debating Sensei',
                        context,
                        displayWidth(context) * 0.05,
                        Colors.pink,
                        FontWeight.w600),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
                icon: Image.network(
                  'https://www.iconsdb.com/icons/preview/white/home-xxl.png',
                  width: displayWidth(context) * 0.07,
                  height: displayHeight(context) * 0.07,
                ),
                label: '',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Image.network(
                  'https://www.iconsdb.com/icons/preview/white/star-xxl.png',
                  width: displayWidth(context) * 0.07,
                  height: displayHeight(context) * 0.07,
                ),
                label: '',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Image.network(
                  'https://png.pngtree.com/png-clipart/20190520/original/pngtree-vector-podium-icon-png-image_4164271.jpg',
                  width: displayWidth(context) * 0.07,
                  height: displayHeight(context) * 0.07,
                ),
                label: '',
                backgroundColor: Colors.black),
            const BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: '',
                backgroundColor: Colors.black),
            const BottomNavigationBarItem(
                icon: CircleAvatar(
                  foregroundImage: NetworkImage(
                      'https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?w=2000'),
                ),
                label: '',
                backgroundColor: Colors.black),
          ],
        ),
      ),
    );
  }
}
