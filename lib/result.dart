// import 'package:flutter/material.dart';

// class Result extends StatelessWidget {
//   final int score;

//   const Result(this.score, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         "Your Score : $score / 10",
//         style: const TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 20,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  const Result(this.score, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Unknown.png', 
              width: 100,
            ),
            SizedBox(height: 20),
            Text(
              "Your Score : $score / 10",
              style: const TextStyle(
                 fontFamily: 'TiltPrism',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 