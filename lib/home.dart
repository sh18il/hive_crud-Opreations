import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final boxx = Hive.box('frindsbox');
  writedat() async {
    await boxx.put(2, 'ffhgkhlutter');
  }

  Updateda() async {
    await boxx.put(2, 'dshsv');
  }

  ReadData() async {
    setState(() {});
  }

  deletda() async {
  await boxx.delete(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('HiVe DB')),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                writedat();
              },
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.blue,
                child: Text('write'),
              ),
            ),
            InkWell(
              onTap: () {
                ReadData();
              },
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.blue,
                child: Text('read'),
              ),
            ),
            InkWell(
              onTap: () {
                Updateda();
              },
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.blue,
                child: Text('update'),
              ),
            ),
            InkWell(
              onTap: () {
                deletda();
              },
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.blue,
                child: Text('delete'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            boxx.get(2) == null ? ' No data found' : boxx.get(1),
            style: TextStyle(fontSize: 20),
          ),
        )
      ]),
    );
  }
}
