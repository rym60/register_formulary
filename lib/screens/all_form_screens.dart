import 'dart:html';

import 'package:flutter/material.dart';

class MobileScreen extends StatefulWidget {
  MobileScreen({Key? key}) : super(key: key);

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  String? fecha;
  Object? myActivity;

  final fechacontroloer = TextEditingController();

  final formkey = GlobalKey<FormState>();

  String dropdownvalue = 'si';   
  
  var items = [    
    'si',
    'no',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:Form(
          key: formkey ,
          child: ListView(
            children: <Widget>[
            TextFormField(
              controller: fechacontroloer,
              decoration: InputDecoration(labelText: "FECHA REGISTRO(dd/mm/aa)"),
              onSaved: (value) {
                fecha = value;
              },
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(labelText: "cuenta con seguro"),
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) { 
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
              ),
            TextFormField(
              decoration: InputDecoration(labelText: "NOMBRE PROMOTOR/DEPORTISTA"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "CARGO"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "NOMBRE DE ASOCIACION, LIGA, CLUB, CENTRO DE FORMACION Y/O ACADEMIA"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "DISCIPLINA DEPORTIVA"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "CATEGORIA"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "DIRECCION"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "CORREO ELECTRONICO"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "CURP"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "EN CASO DE EMERGENCIA NOMBRE"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "TIPO DE SANGRE"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "POPULAR"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "ASOCIADA (FEDERADO)"),
              onSaved: (value) {
                
              },
            ),
            Text(""),
            TextFormField(
              decoration: InputDecoration(labelText: "PRESIDENTE"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "SECRETARIO"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "TESORERO"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "UNIDAD DEPORTIVA DONDE DESARROLLA LA ACTIVIDAD"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "DOMICILIO DE LA UNIDAD DEPORTIVA"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "DIAS DE ACTIVIDAD"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "HORARIO"),
              onSaved: (value) {
                
              },
            ),
            ]
          ),
        ),)
        ),
    );
  }
}

class TabletScreen extends StatefulWidget {
  TabletScreen({Key? key}) : super(key: key);

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  String? fecha;
  Object? myActivity;

  final fechacontroloer = TextEditingController();

  final formkey = GlobalKey<FormState>();

  String dropdownvalue = 'si';   
  
  var items = [    
    'si',
    'no',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:Form(
          key: formkey ,
          child: ListView(
            children: <Widget>[
            TextFormField(
              controller: fechacontroloer,
              decoration: InputDecoration(labelText: "FECHA REGISTRO(dd/mm/aa)"),
              onSaved: (value) {
                fecha = value;
              },
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(labelText: "cuenta con seguro"),
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) { 
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextFormField(
              decoration: InputDecoration(labelText: "NOMBRE PROMOTOR/DEPORTISTA"),
              onSaved: (value) {
                
              },
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "CARGO"),
              onSaved: (value) {
                
              },
            ),
                  )
                ],
              ),
            TextFormField(
              decoration: InputDecoration(labelText: "NOMBRE DE ASOCIACION, LIGA, CLUB, CENTRO DE FORMACION Y/O ACADEMIA"),
              onSaved: (value) {
                
              },
            ),
            Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextFormField(
              decoration: InputDecoration(labelText: "DISCIPLINA DEPORTIVA"),
              onSaved: (value) {
                
              },
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "CATEGORIA"),
              onSaved: (value) {
                
              },
            ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextFormField(
              decoration: InputDecoration(labelText: "DIRECCION"),
              onSaved: (value) {
                
              },
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              onSaved: (value) {
                
              },
            ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextFormField(
              decoration: InputDecoration(labelText: "CORREO ELECTRONICO"),
              onSaved: (value) {
                
              },
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "CURP"),
              onSaved: (value) {
                
              },
            ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextFormField(
              decoration: InputDecoration(labelText: "EN CASO DE EMERGENCIA NOMBRE"),
              onSaved: (value) {
                
              },
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              onSaved: (value) {
                
              },
            ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextFormField(
              decoration: InputDecoration(labelText: "TIPO DE SANGRE"),
              onSaved: (value) {
                
              },
            ),
                    ),
                  Expanded(
                    flex: 2,
                    child: TextFormField(
              decoration: InputDecoration(labelText: "POPULAR"),
              onSaved: (value) {
                
              },
            ),
                    ),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
              decoration: InputDecoration(labelText: "ASOCIADA (FEDERADO)"),
              onSaved: (value) {
                
              },
            ),
                    ),
                ],
              ),

            Text("INTEGRANTES DE LA MESA DIRECTIVA DE ASOCIACIONES, CLUBS O LIGAS"),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "PRESIDENTE"),
              onSaved: (value) {
                
              },
            ),
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              onSaved: (value) {
                
              },
            ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "SECRETARIO"),
              onSaved: (value) {
                
              },
            ),
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              onSaved: (value) {
                
              },
            ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "TESORERO"),
              onSaved: (value) {
                
              },
            ),
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              onSaved: (value) {
                
              },
            ),
                ),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "UNIDAD DEPORTIVA DONDE DESARROLLA LA ACTIVIDAD"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "DOMICILIO DE LA UNIDAD DEPORTIVA"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "DIAS DE ACTIVIDAD"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "HORARIO"),
              onSaved: (value) {
                
              },
            ),
            ]
          ),
        ),)
        ),
    );
  }
}

class DesktopScreen extends StatefulWidget {
  DesktopScreen({Key? key}) : super(key: key);

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  String? fecha;
  Object? myActivity;

  final fechacontroloer = TextEditingController();

  final formkey = GlobalKey<FormState>();

  String dropdownvalue = 'si';   
  
  var items = [    
    'si',
    'no',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:Form(
          key: formkey ,
          child: ListView(
            children: <Widget>[
            TextFormField(
              controller: fechacontroloer,
              decoration: InputDecoration(labelText: "FECHA REGISTRO(dd/mm/aa)"),
              onSaved: (value) {
                fecha = value;
              },
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(labelText: "cuenta con seguro"),
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),   
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) { 
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextFormField(
              decoration: InputDecoration(labelText: "NOMBRE PROMOTOR/DEPORTISTA"),
              onSaved: (value) {
                
              },
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "CARGO"),
              onSaved: (value) {
                
              },
            ),
                  )
                ],
              ),
            TextFormField(
              decoration: InputDecoration(labelText: "NOMBRE DE ASOCIACION, LIGA, CLUB, CENTRO DE FORMACION Y/O ACADEMIA"),
              onSaved: (value) {
                
              },
            ),
            Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextFormField(
              decoration: InputDecoration(labelText: "DISCIPLINA DEPORTIVA"),
              onSaved: (value) {
                
              },
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "CATEGORIA"),
              onSaved: (value) {
                
              },
            ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextFormField(
              decoration: InputDecoration(labelText: "DIRECCION"),
              onSaved: (value) {
                
              },
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              onSaved: (value) {
                
              },
            ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextFormField(
              decoration: InputDecoration(labelText: "CORREO ELECTRONICO"),
              onSaved: (value) {
                
              },
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "CURP"),
              onSaved: (value) {
                
              },
            ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextFormField(
              decoration: InputDecoration(labelText: "EN CASO DE EMERGENCIA NOMBRE"),
              onSaved: (value) {
                
              },
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              onSaved: (value) {
                
              },
            ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextFormField(
              decoration: InputDecoration(labelText: "TIPO DE SANGRE"),
              onSaved: (value) {
                
              },
            ),
                    ),
                  Expanded(
                    flex: 2,
                    child: TextFormField(
              decoration: InputDecoration(labelText: "POPULAR"),
              onSaved: (value) {
                
              },
            ),
                    ),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
              decoration: InputDecoration(labelText: "ASOCIADA (FEDERADO)"),
              onSaved: (value) {
                
              },
            ),
                    ),
                ],
              ),

            Text("INTEGRANTES DE LA MESA DIRECTIVA DE ASOCIACIONES, CLUBS O LIGAS"),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "PRESIDENTE"),
              onSaved: (value) {
                
              },
            ),
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              onSaved: (value) {
                
              },
            ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "SECRETARIO"),
              onSaved: (value) {
                
              },
            ),
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              onSaved: (value) {
                
              },
            ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "TESORERO"),
              onSaved: (value) {
                
              },
            ),
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              onSaved: (value) {
                
              },
            ),
                ),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "UNIDAD DEPORTIVA DONDE DESARROLLA LA ACTIVIDAD"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "DOMICILIO DE LA UNIDAD DEPORTIVA"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "DIAS DE ACTIVIDAD"),
              onSaved: (value) {
                
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "HORARIO"),
              onSaved: (value) {
                
              },
            ),
            ]
          ),
        ),)
        ),
    );
  }
}