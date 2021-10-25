import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:untitled_app/screen/memo.dart';

class MemoAddPage extends StatefulWidget {
  final DatabaseReference reference;

  MemoAddPage(this.reference)

  @override
  State<StatefulWidget> createState() => _MemoAddPage();
}

class _MemoAddPage extends State<MemoAddPage> {
  TextEditingController? contentController;

  @override
  void initState() {
    super.initState();
    contentController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(child: TextField(
                controller: contentController,
                keyboardType: TextInputType.multiline,
                maxLines: 100,
                decoration: InputDecoration(labelText: '내용'),
              )),
              MaterialButton(
                  onPressed: () {
                    widget.reference
                        .push()
                        .set(Memo(
                      contentController!.value.text,
                      DateTime.now().toIso8601String())
                    .toJson())
                        .then((_) {
                          Navigator.of(context).pop();
                    });
                  },
                child: Text('저장하기'),
                shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(1)),
              )
            ],
          )
        )
      )
    );
  }
}