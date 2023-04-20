import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/models/task_data.dart';
import '/screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Wrap with ChangeNotifier - section 260 video 5:10
    return ChangeNotifierProvider(
      // TODO: add builder information - section 206 video 7:05
      create: (_) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:tpdoey_flutter/models/task_data.dart';
// import '/screens/tasks_screen.dart';
// import 'package:provider/provider.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: Wrap with ChangeNotifier - section 260 video 5:10
//     return ChangeNotifierProvider(
//       // TODO: add builder information - section 206 video 7:05
//       // Her way to do this does not work today: builder: (context) => TaskData();
//       create: (BuildContext context) {
//         TaskData();
//       },
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: TasksScreen(),
//       ),
//     );
//   } //Widget
// } //class
