import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ImagePicker _picker = ImagePicker();
  List<XFile> _recentPhotos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.width * 0.4,
                      child: Image.asset('assets/images/logopavic.png', fit: BoxFit.contain),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Recently Diagnosed Photos',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 20),
                    Card(
                      child: Column(
                        children: [
                          ListTile(
                            title: Text('Recent Diagnosed Photos'),
                          ),
                          Container(
                            height: 200,
                            child: _recentPhotos.isEmpty
                                ? Center(child: Text('No photos yet'))
                                : ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: _recentPhotos.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.file(File(_recentPhotos[index].path)),
                                      );
                                    },
                                  ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.width * 0.4,
                      child: Image.asset('assets/images/logopavic.png', fit: BoxFit.contain),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        color: Colors.green,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: IconButton(
                  icon: Image.asset('assets/icons/gallery.png'),
                  onPressed: () async {
                    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
                    if (image != null) {
                      setState(() {
                        _recentPhotos.add(image);
                      });
                    }
                  },
                ),
              ),
              Flexible(
                child: IconButton(
                  icon: Image.asset('assets/icons/camera.png'),
                  onPressed: () async {
                    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
                    if (photo != null) {
                      setState(() {
                        _recentPhotos.add(photo);
                      });
                    }
                  },
                ),
              ),
              Flexible(
                child: IconButton(
                  icon: Image.asset('assets/icons/profile.png'),
                  onPressed: () {
                    // Ação para o perfil
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
