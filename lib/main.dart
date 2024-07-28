import 'package:custom_snackbars/features/custom_snack_bars/widgets/custom_snack_bar_widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    _counter++;
    if (_counter >= 3) {
      _counter = 0;
    }
    switch (_counter) {
      case 0:
        ScaffoldMessenger.of(context).showSnackBar(SuccessSnackBar(
          title: 'Success',
          message:
              'the action was successfullythe action was successfullythe action was successfullythe action was successfullythe action was successfullythe action was successfullythe action was successfullythe action was successfullythe action was successfullythe action was successfullythe action was successfullythe action was successfullythe action was successfullythe action was successfullythe action was successfully',
        ));
        break;
      case 1:
        ScaffoldMessenger.of(context).showSnackBar(WarningSnackBar(
          title: 'Warning',
          message: 'something went wrong, redo action',
        ));
        break;
      case 2:
        ScaffoldMessenger.of(context).showSnackBar(ErrorSnackBar(
          title: 'Failure',
          message: 'i dont know what was wrong here',
        ));
        break;
      default:
        ScaffoldMessenger.of(context).showSnackBar(ErrorSnackBar(
          title: 'Failure',
          message: 'i dont know what was wrong here',
        ));
    }
  }

  @override
  Widget build(BuildContext context) {
    //

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          //

          //

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
