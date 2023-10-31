import 'package:dummy_data/name_modal.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<NameModel> nameList = [
    // 'Rachna', 'vishal', 'akshay', 'saloni', 'jack'
    NameModel(
        name: 'akshay',
        age: 25,
        profession: 'Developer',
        image: "sdfgchj",
        details: Details(fathername: "Raj")),
    NameModel(
      name: 'Rachna',
      age: 55,
      profession: "Doctor",
    ),
    NameModel(
      name: 'saloni',
      age: 45,
      profession: "Police",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dummy Data"),
        ),
        body: ListView.builder(
            itemCount: nameList.length,
            itemBuilder: (context, index) {
              if (nameList[index].details.toString() == 'null') {
                return ListTile(
                  title: Text(nameList![index].name.toString()),
                  subtitle: Text(nameList[index].age.toString()),
                  trailing: IconButton(
                      onPressed: () {
                        nameList.removeAt(index);
                        setState(() {});
                      },
                      icon: Icon(Icons.delete)),
                );
              } else {
                return ListTile(
                  title: Text(nameList![index].name.toString()),
                  subtitle:
                      Text(nameList[index].details!.fathername.toString()),
                  trailing: IconButton(
                      onPressed: () {
                        nameList.removeAt(index);
                        setState(() {});
                      },
                      icon: Icon(Icons.delete)),
                );
              }
            }));
  }
}
//
// class NameModal {
//   String name;
//   int age;
//   DateTime dob;
//
//   NameModal({required this.name, required this.age, required this.dob});
// }
