import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget{
  @override
  State createState() => new ChatScreenState();
}

class ChatScreenState extends State<ChatScreen>{

  final TextEditingController _controller = new TextEditingController();

  void _handleSubmitted(String text) {
    _controller.clear();
  }

  Widget _textComposerWidget(){
    return new IconTheme(
      data: new IconThemeData(
        color: Colors.blueGrey
    ),
    child: new Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new Row(
        children: <Widget>[
          new Flexible(child: new TextField(
      decoration: new InputDecoration.collapsed(hintText: "Send a message"),
      controller: _controller,
      onSubmitted: _handleSubmitted,
    ),
    ),
      new Container(
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        child: new IconButton(icon: new Icon(Icons.send),
          onPressed: () => _handleSubmitted(_controller.text),
        ),
      )
        ],
      ),
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _textComposerWidget();
  }
}