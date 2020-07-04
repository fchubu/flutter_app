import 'package:flutter/material.dart';

final String imgUrl =
    'https://image.shutterstock.com/image-photo/colorful-hot-air-balloons-flying-260nw-1033306540.jpg';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[_cardType1(), SizedBox(height: 30), _cardType2()],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_location),
          onPressed: () => Navigator.pop(context)),
    );
  }

  Widget _cardType1() {
    return Card(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.photo_album, color: Colors.blueAccent),
              title: Text('All about avatar pages'),
              subtitle: Text(
                  'In this sections, we was to learn the world begind avatars. Let\'s see...'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(child: Text('Cancelar'), onPressed: () {}),
                FlatButton(child: Text('Aceptar'), onPressed: () {}),
              ],
            )
          ],
        ),
        elevation: 6.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)));
  }

  Widget _cardType2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/loading_image.gif'),
            image: NetworkImage(imgUrl),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: card,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.red,
      ),
    );
  }
}
