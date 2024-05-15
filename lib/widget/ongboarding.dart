import 'package:flutter/material.dart';

class OnBoardingWidget extends StatelessWidget {
  final int index;
  final Function() onTap;

  const OnBoardingWidget({
    required this.index,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 500,
            margin: EdgeInsets.only(bottom: 40),
            child: const Expanded(
              // flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Icon(
                  //   Icons.telegram,
                  //   size: 100,
                  //   color: Colors.blue,
                  // ),
                  Text(
                    "Davom etaylik",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Jadvallaringiz bilan ishlang",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Nostrud pariatur nisi aliquip pariatur nisi aliquip excepteur ea eiusmod quis.",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  width: 380,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextButton(
                    onPressed: onTap,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Keyingisi",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 208, 208, 208),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextButton(
                        onPressed: onTap,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.apple_outlined,
                              color: Colors.black,
                              size: 35,
                            ),
                            Text(
                              "Apple",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 208, 208, 208),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextButton(
                        onPressed: onTap,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.laptop_chromebook_outlined,
                              color: Colors.amber,
                              size: 35,
                            ),
                            Text(
                              "Google",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 214, 87, 2),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}