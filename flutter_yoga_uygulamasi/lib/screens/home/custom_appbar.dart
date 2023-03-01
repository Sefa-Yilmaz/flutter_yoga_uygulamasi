import 'package:flutter/material.dart';
import 'package:flutter_yoga_uygulamasi/constants/constants.dart';
import 'dart:math' as math;

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: appPadding, right: appPadding / 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(appPadding / 8),
                child: Container(
                  decoration: const BoxDecoration(
                    color: primary,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(appPadding / 20),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: white, shape: BoxShape.circle),
                      child: const Padding(
                        padding: EdgeInsets.all(appPadding / 8),
                        child: Center(
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/propic.jpeg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: size.width * 0.01),
              const Text(
                'Tamara Bellis',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              )
            ],
          ),
          Row(
            children: [
              Stack(
                children: [
                  const Icon(Icons.notifications_none_rounded, size: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(appPadding / 5),
                      child: Text(
                        '0',
                        style: TextStyle(color: white, fontSize: 8),
                      ),
                    ),
                  )
                ],
              ),
              Transform(
                transform: Matrix4.rotationY(math.pi),
                alignment: Alignment.center,
                child: const Icon(Icons.sort_rounded, size: 30),
              ),
            ],
          )
        ],
      ),
    );
  }
}
