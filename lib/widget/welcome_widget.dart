import 'package:flutter/material.dart';

import '../../screen/home_screen.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset("assets/boy.png"),
          const SizedBox(
            height: 6,
          ),
          const Text(
            "اطلب أكلك الآن!",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "اطلب وراح نوصل الطلب في غضون دقائق قليلة إلى باب منزلك",
              style: TextStyle(fontSize: 18, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 90,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 232, 98, 158),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "اضغط هنا",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
