import 'package:event_scheduler_app/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[200],
        appBar: AppBar(
          title: const Text("Event Scheduler"),
          backgroundColor: Colors.deepPurple[900],
        ),
        body: ListView.builder(
          itemCount: _list.length,
          itemBuilder: ((context, index) => _list[index]),
        ),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            backgroundColor: Colors.deepPurple[900],
            onPressed: () async {
              String newText = await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const NewEventScreen()));
              setState(() {
                _list.add(
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SizedBox(child: Text(newText,textAlign: TextAlign.center,)),
                        ),
                      ),
                    )
                );
              });
            },
            child: const Icon(Icons.add),
          );
        }),
      ),
    );
  }
}


