import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class MainPart25 extends StatefulWidget {
  @override
  _MainPart25State createState() => _MainPart25State();
}

class _MainPart25State extends State<MainPart25> {
  Person selectedPerson;

  List<Person> persons = [
    Person("Danar"),
    Person("Friska"),
  ];

  List<DropdownMenuItem> generateItems(List<Person> persons) {
    List<DropdownMenuItem> items = [];
    for (var item in persons) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Drop Down'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: DropdownButton(
              isExpanded: true,
              style: titleTextStyle,
              value: selectedPerson,
              items: generateItems(persons),
              onChanged: (item) {
                setState(() {
                  selectedPerson = item;
                });
              },
            ),
          ),
          Text(
            (selectedPerson != null)
                ? selectedPerson.name
                : "Belum ada yang terpilih",
            style: subTitleTextStyle2,
          )
        ],
      ),
    );
  }
}

class Person {
  String name;
  Person(this.name);
}
