import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatelessWidget {
  final ImagePicker _picker = ImagePicker();

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
                            child: Center(child: Text('Placeholder for photos')),
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
                      // Faça algo com a imagem, como salvar ou exibir
                    }
                    // Ação para a galeria
                  },
                ),
              ),
              Flexible(
                child: IconButton(
                  icon: Image.asset('assets/icons/camera.png'),
                  onPressed: () async {
                    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
                    if (photo != null) {
                      // Faça algo com a foto, como salvar ou exibir
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
