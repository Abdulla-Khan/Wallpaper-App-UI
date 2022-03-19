import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../constants/themes.dart';

class DetailView extends StatelessWidget {
  final String wallpaper;
  const DetailView({Key? key, required this.wallpaper}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: const [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/profile.jpg'),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Abdullah',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Row(children: const [
                    Icon(
                      MdiIcons.waterOutline,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white,
                    ),
                  ])
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(wallpaper), fit: BoxFit.cover)),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 10,
                        right: 10,
                        left: 10,
                        child: Container(
                          height: size.height * .39,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: primaryColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 30, 16, 10),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Colourful',
                                    style: TextStyle(
                                        fontSize: 34,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'Abyss',
                                    style: TextStyle(
                                        fontSize: 34,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        MdiIcons.waterOutline,
                                        color: Colors.white,
                                        size: 19,
                                      ),
                                      Text(
                                        '1.8k drops',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(width: 30),
                                      Icon(
                                        MdiIcons.mapMarkerOutline,
                                        color: Colors.white,
                                        size: 17,
                                      ),
                                      Text(
                                        'Mariana Trench',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Icon(
                                        MdiIcons.closeCircleOutline,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'Hide',
                                        style: TextStyle(
                                          color: Colors.white,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
