import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  _printButton() {
    debugPrint("Hellow Alert");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scalf fole Example"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade700,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.email),
              onPressed: () => debugPrint("Icon Button Tripped")),
          IconButton(
            icon: Icon(Icons.alarm),
            onPressed: _printButton,
          )
        ],
      ),
      backgroundColor: Colors.redAccent,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton()

            // InkWell(
            //   child: Text(
            //     "Tap Me letter ",
            //     style: TextStyle(fontSize: 24.4),
            //   ),
            //   onTap: () => debugPrint("Tab me lettefffr"),
            // )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackbar = SnackBar(
          content: Text("SnapBar is herer."),
        );
        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text("Snap Bar show Bt"),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepOrange,
      child: Center(
        child: Text(
          "Hiellwo ",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 23.4,
          ),
        ),
      ),
    );
  }
}
