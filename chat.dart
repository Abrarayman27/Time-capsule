// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = [];

  void _sendMessage(String text) async {
    setState(() {
      _messages.add('User: $text');
    });
    String response = await getChatbotResponse(text);
    setState(() {
      _messages.add('Chatbot: $response');
    });
  }

  Future<String> getChatbotResponse(String text) async {
    // Replace 'YOUR_DIALOGFLOW_API_KEY' and 'YOUR_PROJECT_ID' with your actual Dialogflow API key and project ID
    String apiUrl = 'https://dialogflow.googleapis.com/v2/projects/YOUR_PROJECT_ID/agent/sessions/123456789:detectIntent';
    Map<String, dynamic> body = {
      "queryInput": {
        "text": {
          "text": text,
          "languageCode": "en",
        }
      }
    };
    String apiKey = 'YOUR_DIALOGFLOW_API_KEY';
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $apiKey',
    };
    http.Response response = await http.post(Uri.parse(apiUrl), headers: headers, body: json.encode(body));
    Map<String, dynamic> data = json.decode(response.body);
    return data['queryResult']("fulfillmentText");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   shape: CircleBorder(side: BorderSide(color: const Color.fromARGB(255, 13, 4, 14), width: 1),
        //       eccentricity: 0.2),
        //   backgroundColor: Color(0xFFDDCC8C),
        //   title: Center(
        //     child: Text('Chatbot ')),
        // ),
        body: 
        
        Container(
                      decoration: BoxDecoration(
                        // borderRadius:BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage("image/backgroung2.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
          child: Column(
      
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_messages[index]),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText: 'Enter message',
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () {
                        _sendMessage(_controller.text);
                        _controller.clear();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}