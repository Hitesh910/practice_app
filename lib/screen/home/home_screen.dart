import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_app2/utils/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resume App"),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: Container(
              height: 40,
              child: const Text(
                "Build Option",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            )),
        backgroundColor: Colors.blue,
      ),
      body: Column(
          children: List.generate(
        categoryList.length,
        (index) => Container(
          // height: 80,
          // color: Colors.grey,
          child: TileK(
            label: categoryList[index]['name'],
            icon: categoryList[index]['icon'],
            routes : categoryList[index]['routes']
          ),
        ),
      )
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Row(
          //   children: [
          //   Icon(Icons.person_add_alt,size: 35,),
          //   SizedBox(width: 15,),
          //   Text("Contact Screen",style: TextStyle(fontSize: 20),),
          //   Spacer(),
          //   Icon(Icons.arrow_forward_ios)
          //   ],
          //               ),
          // ),

          ),
    );
  }

  Widget TileK({required String label, required IconData icon,required String routes}) {
    // Column(
    //   children: List.generate(categoryList.length, (index) =>
    //       Row(
    //     children: [
    //       Icon(Icons.person_add_alt),
    //       Text("Contact Screen"),
    //       Icon(Icons.arrow_forward_ios)
    //     ],
    //   ),)
    // );
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              setState(() {
                Navigator.pushNamed(context, '$routes');
              });
            },
            child: Container(
              height: 50,
              width: MediaQuery.sizeOf(context).width,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Icon(icon),
                  const SizedBox(width: 15,),
                  Text("$label"),
                  const Spacer(),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
        ),
      ],
    );
    // return null;
  }
}
