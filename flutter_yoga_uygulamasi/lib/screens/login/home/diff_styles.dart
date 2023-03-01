import 'package:flutter/material.dart';
import 'package:flutter_yoga_uygulamasi/constants/constants.dart';
import 'package:flutter_yoga_uygulamasi/data/data.dart';
import 'package:flutter_yoga_uygulamasi/models/style.dart';

class DiffStyles extends StatelessWidget {
  _buildStyles(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Style style = styles[index];
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: appPadding / 2),
          child: Container(
            margin: const EdgeInsets.only(
                top: appPadding * 3, bottom: appPadding * 2),
            width: size.width * 0.4,
            height: size.height * 0.2,
            decoration: BoxDecoration(
              color: white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(100),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: black.withOpacity(0.3),
                  blurRadius: 20,
                  offset: const Offset(5, 15),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: appPadding / 2, right: appPadding * 3),
                  child: Text(
                    style.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: appPadding / 2,
                      right: appPadding / 2,
                      bottom: appPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: black.withOpacity(0.3),
                          ),
                          SizedBox(width: size.width * 0.01),
                          Text(
                            style.time.toString() + 'min',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: black.withOpacity(0.3),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: primary,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: const Icon(Icons.add, color: white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          child: Positioned(
            right: 0,
            top: 0,
            child: Image(
              width: size.width * 0.3,
              height: size.height * 0.2,
              image: AssetImage(style.imageUrl),
            ),
          ),
        )
      ],
    );
  }

  const DiffStyles({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(appPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'For Beginners',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.5,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  fontSize: 24,
                  color: primary,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: appPadding / 2),
          child: Container(
            height: size.height * 0.33,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: styles.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildStyles(context, index);
              },
            ),
          ),
        )
      ],
    );
  }
}
