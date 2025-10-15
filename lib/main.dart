
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_screen/component/counter_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CounterProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          fontFamily: 'fonts',
          
        ),
        home: const MyHomePage(title: 'Counter App'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterProvider>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed this button many times:',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),),
            Text(
              '${counter.counter}',
             style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
             ),
            ),
          ],
        
        ),
      ),
    
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        tooltip: 'Increment',
          child: const Icon(Icons.add),
      ),
      

    );
  }
}