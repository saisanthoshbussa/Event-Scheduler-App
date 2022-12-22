import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget{
  const NewEventScreen({super.key});

  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventScreen>{
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[900],
        title: const Text("New Event"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(30),
            //height: 200,
            child: TextField(
              controller: _textEditingController,
              minLines: 1,
              maxLines: 3,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintStyle: const TextStyle(color: Colors.white),
                prefixIcon: const Icon(
                  Icons.event,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                fillColor: Colors.deepPurple[900],
                contentPadding: const EdgeInsets.all(27),
                filled: true,

                hintText: "   Event",
                //icon: Icons.event
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Builder(
                builder: (context) {
                  return ElevatedButton(onPressed: () {

                    String newEventText = _textEditingController.text;
                    Navigator.of(context).pop(newEventText);
                  },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white38,
                        shape: const StadiumBorder()),

                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(140, 18, 140, 18),
                      child: Text("ADD",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),

                  );

                }
            ),
          ),
        ],
      ),
    );
  }

}

