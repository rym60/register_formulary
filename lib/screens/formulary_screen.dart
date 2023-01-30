import 'package:flutter/material.dart';
import 'package:formulario_de_registro/helpers/Responsive.dart';
import 'package:formulario_de_registro/screens/all_form_screens.dart';

class FormularyScreen extends StatelessWidget {
  const FormularyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTRO DE PROMOTORES DEPORTIVOS, CLUBES, LIGAS Y CENTROS DE FORMACIÓN"),
      ),
      body: Responsive(
        mobile: MobileScreen(),
        tablet: TabletScreen(), 
        desktop: DesktopScreen()
        ),
    );
  }
}