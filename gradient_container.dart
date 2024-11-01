import 'package:flutter/material.dart';
//import 'package:first_app/style_text.dart';
import 'package:first_app/dice_roller.dart';

const startAlignment = Alignment.topLeft; // final vise-verse with var
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // own class with extended class call
  const GradientContainer(this.color1, this.color2,
      {super.key}); // own consructor function

//  const GradientContainer.purple({super.key})
//   : color1 = Colors.deepPurple,
//     color2 = Colors.indigo;

  final Color color1;
  final Color color2;
  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child:const Center(
        child: DiceRoller(),
      ),
    );
  }
}
//Image.asset('assests/pic/dice-2.png',width:200);

// class GradientContainer extends StatelessWidget {
//   // own class with extended class call
//   const GradientContainer({super.key, required this.colors}); // own consructor function

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('Hello World!')),
//     );
//   }
// }
