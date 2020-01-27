import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_moor_flutter/moor_database/dao/DiscardRecordDao.dart';

import 'moor_database/moor_database.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final db = AppDatabase();
    return (MultiProvider(
        providers: [
          Provider(
            create: (_) => db.areaTypeDao,
          ),
          Provider(
            create: (_) => db.classRCDDao,
          ),
          Provider(
            create: (_) => AppDatabase().discardRecordDao,
          ),
          Provider(
            create: (_) => AppDatabase().typeMaterialDao,
          ),
        ],
        child: MaterialApp(
          title: 'teste moor',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Record(title: 'Moor Flutter'),
        )));
  }
}

class Record extends StatefulWidget {
  Record({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RecordState createState() => _RecordState();
}

class _RecordState extends State<Record> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
            child: StreamBuilder(
          stream: Provider.of<DiscardRecordDao>(context).watchAllRecords(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return Container(
            );
          },
        )));
  }
}
