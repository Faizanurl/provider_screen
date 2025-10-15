// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_screen/component/counter_provider.dart';

// class CounterScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return
//        MaterialApp(
//         debugShowCheckedModeBanner: false,

//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//           useMaterial3: true,
//         ),
//         home: const MyHomePage(title: 'Counter App'),
      
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     final counter = context.watch<CounterProvider>();

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             Text(
//               '${counter.counter}',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: counter.increment,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }