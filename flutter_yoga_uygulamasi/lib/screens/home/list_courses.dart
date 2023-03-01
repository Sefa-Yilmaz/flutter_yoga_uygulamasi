import 'package:flutter/material.dart';
import 'package:flutter_yoga_uygulamasi/constants/constants.dart';
import 'package:flutter_yoga_uygulamasi/data/data.dart';
import 'package:flutter_yoga_uygulamasi/models/course.dart';

class ListCourses extends StatelessWidget {
  const ListCourses({super.key});

  _buildCourses(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Course course = courses[index];
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: appPadding, vertical: appPadding / 2),
      child: Container(
        height: size.height * 0.2,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: black.withOpacity(0.3),
              blurRadius: 30,
              offset: const Offset(10, 15),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(appPadding),
          child: Row(
            children: [
              Container(
                width: size.width * 0.3,
                height: size.height * 0.2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(course.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: size.width * 0.4,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: appPadding / 2, top: appPadding / 1.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                        maxLines: 2,
                      ),
                      SizedBox(height: size.height * 0.01),
                      Row(
                        children: [
                          Icon(
                            Icons.folder_open_outlined,
                            color: black.withOpacity(0.3),
                          ),
                          SizedBox(width: size.width * 0.1),
                          Text(
                            course.students,
                            style: TextStyle(
                              color: black.withOpacity(0.3),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: size.width * 0.1),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: black.withOpacity(0.3),
                          ),
                          SizedBox(width: size.width * 0.1),
                          Text(
                            course.time.toString() + 'min',
                            style: TextStyle(
                              color: black.withOpacity(0.3),
                            ),
                          ),
                        ],
                      ),
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

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
                appPadding, 0, appPadding, appPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Courses',
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
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: courses.length,
              itemBuilder: (context, index) {
                return _buildCourses(context, index);
              },
            ),
          )
        ],
      ),
    );
  }
}
