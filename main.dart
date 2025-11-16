import 'package:cubitbloc/todo/todo_screen.dart';
import 'package:cubitbloc/weather/weather_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: TodoScreen()));
}

// void main() {
//   runApp(
//     BlocProvider(
//       create: (context) => CubitClass(),
//       child: MaterialApp(home: Homepage()),
//     ),
//   );
// }

// class Homepage extends StatelessWidget {
//   final TextEditingController emailp = TextEditingController();
//   final TextEditingController passwp = TextEditingController();
//   Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: Column(
//           children: [
//             TextFormField(
//               controller: emailp,
//               decoration: InputDecoration(hint: Text('email')),
//               onChanged: (value) =>
//                   context.read<CubitClass>().activatebutton(value, passwp.text),
//             ),
//             TextFormField(
//               controller: passwp,
//               onChanged: (value) =>
//                   context.read<CubitClass>().activatebutton(emailp.text, value),
//               decoration: InputDecoration(hint: Text('password')),
//             ),
//             SizedBox(height: 15),
//             BlocBuilder<CubitClass, bool>(
//               builder: (context, state) {
//                 return ElevatedButton(
//                   onPressed: state ? () {} : null,
//                   child: Text('log in '),
//                 );
//               },
//             ),

//             //Text("you pushed"),
//             // BlocBuilder<CubitClass, Logstate>(
//             //   builder: (context, state) {
//             //     return Text("${state.count}");
//             //   },
//             // ),
//             // Expanded(
//             //   child: FloatingActionButton(
//             //     onPressed: () => context.read<CubitClass>().increment(),
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
