import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
  TextEditingController txtAdd = TextEditingController();
  GlobalKey<FormState> fromKey = GlobalKey<FormState>();
  int? indexKey = 0;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Contact"),
          backgroundColor: Colors.blue,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(110),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            indexKey = 0;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: (indexKey == 0) ? 2 : 0))),
                          child: const Text(
                            "Contact",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            indexKey = 1;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: (indexKey == 1) ? 2 : 0))),
                          child: const Text(
                            "Photo",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),
        body: IndexedStack(
          index: indexKey,
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 500,
                      width: 550,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            const BoxShadow(spreadRadius: -1, blurRadius: 5)
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: txtName,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text("Name"),
                                prefixIcon: Icon(Icons.person),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Name is required";
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: txtEmail,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text("Email"),
                                prefixIcon: Icon(Icons.email),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Email is required";
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: txtPhone,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text("Phone"),
                                prefixIcon: Icon(Icons.phone),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Phone number is required";
                                }
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: txtAdd,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text("Address"),
                                prefixIcon: Icon(Icons.location_on),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Address is required";
                                }
                                return null;
                              },
                              maxLines: 2,
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (fromKey.currentState!.validate()) {
                                    String? name = txtName.text;
                                    String? email = txtEmail.text;
                                    print("$name , $email");
                                  }
                                });
                              },
                              child: const Text("Submit"))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              width: 550,
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(spreadRadius: -2, blurRadius: 5)],
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 60,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.2,0.8),
                    child: IconButton.filledTonal(
                        onPressed: () {}, icon: Icon(Icons.add),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
