import 'package:flutter/material.dart';

class TechnicalScreen extends StatefulWidget {
  const TechnicalScreen({super.key});

  @override
  State<TechnicalScreen> createState() => _TechnicalScreenState();
}

class _TechnicalScreenState extends State<TechnicalScreen> {
  List<TextEditingController> m1 = [TextEditingController()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Technical Skills",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: Center(),
        ),
      ),
      body: Column(
        children: [
          Container(
            // height: 250,
            width: 400,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 5, spreadRadius: -2)],
                color: Colors.white),
            child: Column(
              children: [
                const Text(
                  "Enter your skills",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                    children: List.generate(
                  m1.length,
                  (index) => SizedBox(
                    height: 50,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("C language,C++")),
                    ),
                  ),
                )),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        m1.add(
                          TextEditingController(),
                        );
                      });
                    },
                    child: const Text("Add"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
