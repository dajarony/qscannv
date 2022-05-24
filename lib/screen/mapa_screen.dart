import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MapaScreen extends StatelessWidget {
  const MapaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        actions: [
          IconButton(
              icon: Icon(Icons.ac_unit_rounded),
              onPressed: () => Navigator.pushNamed(context, '/home')),
        ],
      ),
      body: Center(
        child: Text('CardScreen',
            style: GoogleFonts.allertaStencil(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            )),
      ),
    );
  }
}
