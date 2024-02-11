import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'File Storage Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FileStorageDemo(),
    );
  }
}

class FileStorageDemo extends StatefulWidget {
  @override
  _FileStorageDemoState createState() => _FileStorageDemoState();
}

class _FileStorageDemoState extends State<FileStorageDemo> {
  TextEditingController _controller = TextEditingController();
  String _fileContent = '';

  @override
  void initState() {
    super.initState();
    _readData();
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/data.txt');
  }

  Future<void> _writeData(String data) async {
    final file = await _localFile;
    await file.writeAsString(data);
  }

  Future<void> _readData() async {
    try {
      final file = await _localFile;
      String contents = await file.readAsString();
      setState(() {
        _fileContent = contents;
      });
    } catch (e) {
      setState(() {
        _fileContent = 'Error reading file';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('File Storage Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter Text'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await _writeData(_controller.text);
                _controller.clear();
                _readData();
              },
              child: Text('Save Data'),
            ),
            SizedBox(height: 20),
            Text('Data stored in file:'),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  _fileContent,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
