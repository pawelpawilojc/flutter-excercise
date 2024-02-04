import 'package:flutter/material.dart';
import 'package:listopad3/utils/my_colors.dart';
import 'package:listopad3/views/home/home_view.dart';
import 'package:listopad3/views/login/login_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder<bool>(
        future: _checkIfLoggedIn(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(
                backgroundColor: MyColors.midnightOrchidColor,
                color: MyColors.enchantingAmethystColor,);
          } else {
            final isLoggedIn = snapshot.data ?? false;

            return isLoggedIn ? const HomePage() : const LoginPage();
          }
        },
      ),
    );
  }

  Future<bool> _checkIfLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('logged') ?? false;
  }
}

//

// import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// final String assetName = 'assets/svg/login.svg';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a blue toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'MobiDSW'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   bool checkboxState = false;
//
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//
//           children: <Widget>[
//             MySvgWidget(),
//             const Text(
//                 'Logowanie',
//                 style: TextStyle(fontSize: 20,
//                     fontWeight: FontWeight.bold)
//             ),
//             TextFormField(
//               decoration: const InputDecoration(
//                 icon: Icon(Icons.email),
//                 hintText: 'Wpisz swój adres email',
//                 labelText: 'E-mail',
//               ),
//
//
//             ),
//             TextFormField(
//               obscureText: true,
//               decoration: const InputDecoration(
//                 icon: Icon(Icons.password),
//                 hintText: 'Wpisz swoje hasło',
//                 labelText: 'Hasło',
//               ),
//             ),
//             RichText(text: TextSpan(
//                 text: '\nNie pamiętasz hasła?',
//                 recognizer: TapGestureRecognizer()
//                   ..onTap = () => showDialog(
//                       context: context,
//                       builder: (BuildContext _){
//                         return const AlertDialog(
//                           title: Text('Nie pamiętasz hasła?'),
//                           content: Text('No to szkoda.'),
//                         );
//                       }
//                   ),
//                 style: const TextStyle(color:Colors.blue,
//                   decoration: TextDecoration.underline,)
//             )),
//             CheckboxListTile(
//               controlAffinity: ListTileControlAffinity.leading,
//               checkColor: Colors.tealAccent,
//               title: Text('Checkbox '+checkboxState.toString()),
//               value: checkboxState,
//               onChanged: (value){
//                 setState((){
//                   checkboxState=value!;
//                 });
//               },
//             ),
//             ElevatedButton(
//
//                 onPressed: () => showDialog(
//                     context: context,
//                     builder: (BuildContext _) {
//                       return const AlertDialog(
//                         title: Text('Zaloguj'),
//                         content: Text('Zaloguj'),
//                       );
//                     }) ,
//
//                 child: const Text('Zaloguj')),
//             const Text(
//                 '\nNie masz konta?',
//                 style: TextStyle()
//             ),
//             RichText(text: TextSpan(
//                 text: 'Zarejestruj się',
//                 recognizer: TapGestureRecognizer()
//                   ..onTap = () => showDialog(
//                       context: context,
//                       builder: (BuildContext _){
//                         return const AlertDialog(
//                           title: Text('Zarejestruj'),
//                           content: Text('się'),
//                         );
//                       }
//                   ),
//                 style: const TextStyle(color:Colors.blue,
//                   decoration: TextDecoration.underline,)
//             )),
//           ],
//         ),
//       ),
//       // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
// class MySvgWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SvgPicture.asset(
//       'assets/svg/login.svg',
//       semanticsLabel: 'Logo',
//       width: 100,
//     );
//   }
// }
