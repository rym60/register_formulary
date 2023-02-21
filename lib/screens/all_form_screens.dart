import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:formulario_de_registro/api_conection/api_conecion.dart';
import 'package:formulario_de_registro/models/promo.dart';

import 'package:http/http.dart' as http;

class MobileScreen extends StatefulWidget {
  MobileScreen({Key? key}) : super(key: key);

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  String? fecha;
  Object? myActivity;
final now = DateTime.now();

  final segurocontroller = TextEditingController();
  final pronombreperscontroller = TextEditingController();
  final pronombreasocontroller = TextEditingController();
  final prodiciplinacontroller = TextEditingController();
  final procategoriacontroller = TextEditingController();
  final prodireccioncontroller = TextEditingController();
  final protelefonocontroller = TextEditingController();
  final proemailcontroller = TextEditingController();
  final procurpcontroller = TextEditingController();
  final procontactoemercontroller = TextEditingController();
  final protelefonoemercontroller = TextEditingController();
  final prosangrecontroller = TextEditingController();
  final propopularcontroller = TextEditingController();
  final proasociadacontroller = TextEditingController();
  final propresicontroller = TextEditingController();
  final protelefonopresicontroller = TextEditingController();
  final prosecrecontroller = TextEditingController();
  final protelefonosecrecontroller = TextEditingController();
  final proubicacioncontroller = TextEditingController();
  final prodomiciliocontroller = TextEditingController();
  final prodiasactcontroller = TextEditingController();
  final prohorascontroller = TextEditingController();
  final procargocontroller = TextEditingController();
  final protesocontroller = TextEditingController();
  final protelefonotesocontroller = TextEditingController();
  final procodpostalcontroller = TextEditingController();

  late int protelefono = int.parse(protelefonocontroller.text);
  late int protelefonoemer = int.parse(protelefonoemercontroller.text);
  late int protelefonopresi = int.parse(protelefonopresicontroller.text);
  late int protelefonosecre = int.parse(protelefonosecrecontroller.text);
  late int prohoras = int.parse(prohorascontroller.text);
  late int protelefonoteso = int.parse(protelefonotesocontroller.text);
  late int procodpostal = int.parse(procodpostalcontroller.text);

  saverecord() async
  {
      try {
        var res = await http.post(
          Uri.parse(API.save),
          body: { 
            'fecha': now.toString(), 
            'seguro': segurocontroller.text, 
            'nombrepers': pronombreperscontroller.text, 
            'nombreaso': pronombreasocontroller.text, 
            'diciplina': prodiciplinacontroller.text, 
            'categoria': procategoriacontroller.text, 
            'direccion': prodireccioncontroller.text, 
            'telefono': protelefonocontroller.text, 
            'email': proemailcontroller.text, 
            'curp': procurpcontroller.text, 
            'contactoemer': procontactoemercontroller.text, 
            'telefonoemer': protelefonoemercontroller.text, 
            'sangre': prosangrecontroller.text, 
            'popular': propopularcontroller.text, 
            'asociada': proasociadacontroller.text, 
            'presi': propresicontroller.text, 
            'telefonopresi': protelefonopresicontroller.text, 
            'secre': prosecrecontroller.text, 
            'telefonosecre': protelefonosecrecontroller.text, 
            'ubicacion': proubicacioncontroller.text, 
            'domicilio': prodomiciliocontroller.text, 
            'diasact': prodiasactcontroller.text, 
            'hora': prohorascontroller.text, 
            'cargo': procargocontroller.text, 
            'teso': protesocontroller.text, 
            'telefonoteso': protelefonotesocontroller.text, 
            'codpostal': procodpostalcontroller.text
          },
        );

        if(res.statusCode == 200){
          var resBodyOfSave = jsonDecode(res.body);
          if(resBodyOfSave['success']==true){
            Fluttertoast.showToast(msg: 'saved successfully');
          }else{
            Fluttertoast.showToast(msg: 'error with save');
          }
        }
      } catch (e) {
        print(e.toString());
        Fluttertoast.showToast(msg: e.toString());
        print(e);
      }
  } 

  final formkey = GlobalKey<FormState>();

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
            TextField(
              decoration: InputDecoration(labelText: "CUENTA CON SEGURO?"),
              controller: segurocontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "NOMBRE PROMOTOR/DEPORTISTA"),
              controller: pronombreperscontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "CARGO"),
              controller: procargocontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "NOMBRE DE ASOCIACION, LIGA, CLUB, CENTRO DE FORMACION Y/O ACADEMIA"),
              controller: pronombreasocontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "DISCIPLINA DEPORTIVA"),
              controller: prodiciplinacontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "CATEGORIA"),
              controller: procategoriacontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "DIRECCION"),
              controller: prodireccioncontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              controller: protelefonocontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "CORREO ELECTRONICO"),
              controller: proemailcontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "CURP"),
              controller: procurpcontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "EN CASO DE EMERGENCIA NOMBRE"),
              controller: procontactoemercontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              controller: protelefonoemercontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "TIPO DE SANGRE"),
              controller: prosangrecontroller
            ),
            TextField(
              decoration: InputDecoration(labelText: "POPULAR"),
              controller: propopularcontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "ASOCIADA (FEDERADO)"),
              controller: proasociadacontroller,
            ),
            Text("INTEGRANTES DE LA MESA DIRECTIVA DE ASOCIACIONES, CLUBS O LIGAS"),
            TextField(
              decoration: InputDecoration(labelText: "PRESIDENTE"),
              controller: propresicontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              controller: protelefonopresicontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "SECRETARIO"),
              controller: prosecrecontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              controller: protelefonosecrecontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "TESORERO"),
              controller: protesocontroller
            ),
            TextField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              controller: protelefonotesocontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "UNIDAD DEPORTIVA DONDE DESARROLLA LA ACTIVIDAD"),
              controller: proubicacioncontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "DOMICILIO DE LA UNIDAD DEPORTIVA"),
              controller: prodomiciliocontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "DIAS DE ACTIVIDAD"),
              controller: prodiasactcontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "HORARIO"),
              controller: prohorascontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "codigo postal"),
              controller: procodpostalcontroller,
            ),
            RaisedButton(
              onPressed: saverecord,
              child: Text('Guardar'),
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

final now = DateTime.now();

  final segurocontroller = TextEditingController();
  final pronombreperscontroller = TextEditingController();
  final pronombreasocontroller = TextEditingController();
  final prodiciplinacontroller = TextEditingController();
  final procategoriacontroller = TextEditingController();
  final prodireccioncontroller = TextEditingController();
  final protelefonocontroller = TextEditingController();
  final proemailcontroller = TextEditingController();
  final procurpcontroller = TextEditingController();
  final procontactoemercontroller = TextEditingController();
  final protelefonoemercontroller = TextEditingController();
  final prosangrecontroller = TextEditingController();
  final propopularcontroller = TextEditingController();
  final proasociadacontroller = TextEditingController();
  final propresicontroller = TextEditingController();
  final protelefonopresicontroller = TextEditingController();
  final prosecrecontroller = TextEditingController();
  final protelefonosecrecontroller = TextEditingController();
  final proubicacioncontroller = TextEditingController();
  final prodomiciliocontroller = TextEditingController();
  final prodiasactcontroller = TextEditingController();
  final prohorascontroller = TextEditingController();
  final procargocontroller = TextEditingController();
  final protesocontroller = TextEditingController();
  final protelefonotesocontroller = TextEditingController();
  final procodpostalcontroller = TextEditingController();

  late int protelefono = int.parse(protelefonocontroller.text);
  late int protelefonoemer = int.parse(protelefonoemercontroller.text);
  late int protelefonopresi = int.parse(protelefonopresicontroller.text);
  late int protelefonosecre = int.parse(protelefonosecrecontroller.text);
  late int prohoras = int.parse(prohorascontroller.text);
  late int protelefonoteso = int.parse(protelefonotesocontroller.text);
  late int procodpostal = int.parse(procodpostalcontroller.text);

  saverecord() async
  {
      try {
        var res = await http.post(
          Uri.parse(API.save),
          body: { 
            'fecha': now.toString(), 
            'seguro': segurocontroller.text, 
            'nombrepers': pronombreperscontroller.text, 
            'nombreaso': pronombreasocontroller.text, 
            'diciplina': prodiciplinacontroller.text, 
            'categoria': procategoriacontroller.text, 
            'direccion': prodireccioncontroller.text, 
            'telefono': protelefonocontroller.text, 
            'email': proemailcontroller.text, 
            'curp': procurpcontroller.text, 
            'contactoemer': procontactoemercontroller.text, 
            'telefonoemer': protelefonoemercontroller.text, 
            'sangre': prosangrecontroller.text, 
            'popular': propopularcontroller.text, 
            'asociada': proasociadacontroller.text, 
            'presi': propresicontroller.text, 
            'telefonopresi': protelefonopresicontroller.text, 
            'secre': prosecrecontroller.text, 
            'telefonosecre': protelefonosecrecontroller.text, 
            'ubicacion': proubicacioncontroller.text, 
            'domicilio': prodomiciliocontroller.text, 
            'diasact': prodiasactcontroller.text, 
            'hora': prohorascontroller.text, 
            'cargo': procargocontroller.text, 
            'teso': protesocontroller.text, 
            'telefonoteso': protelefonotesocontroller.text, 
            'codpostal': procodpostalcontroller.text
          },
        );

        if(res.statusCode == 200){
          var resBodyOfSave = jsonDecode(res.body);
          if(resBodyOfSave['success']==true){
            Fluttertoast.showToast(msg: 'saved successfully');
          }else{
            Fluttertoast.showToast(msg: 'error no se pudo');
          }
        }
      } catch (e) {
        print(e.toString());
        Fluttertoast.showToast(msg: e.toString());
        print(e);
      }
  }
  final formkey = GlobalKey<FormState>();
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
            TextField(
              decoration: InputDecoration(labelText: "CUENTA CON SEGURO?"),
              controller: segurocontroller,
            ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
              decoration: InputDecoration(labelText: "NOMBRE PROMOTOR/DEPORTISTA"),
              controller: pronombreperscontroller,
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextField(
              decoration: InputDecoration(labelText: "CARGO"),
              controller: procargocontroller,
            ),
                  )
                ],
              ),
            TextField(
              decoration: InputDecoration(labelText: "NOMBRE DE ASOCIACION, LIGA, CLUB, CENTRO DE FORMACION Y/O ACADEMIA"),
              controller: pronombreasocontroller,
            ),
            Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
              decoration: InputDecoration(labelText: "DISCIPLINA DEPORTIVA"),
              controller: prodiciplinacontroller,
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextField(
              decoration: InputDecoration(labelText: "CATEGORIA"),
              controller: procategoriacontroller,
            ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
              decoration: InputDecoration(labelText: "DIRECCION"),
              controller: prodireccioncontroller,
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              controller: protelefonocontroller,
            ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
              decoration: InputDecoration(labelText: "CORREO ELECTRONICO"),
              controller: proemailcontroller,
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextField(
              decoration: InputDecoration(labelText: "CURP"),
              controller: procurpcontroller,
            ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
              decoration: InputDecoration(labelText: "EN CASO DE EMERGENCIA NOMBRE"),
              controller: procontactoemercontroller,
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              controller: protelefonoemercontroller,
            ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextField(
              decoration: InputDecoration(labelText: "TIPO DE SANGRE"),
              controller: prosangrecontroller,
            ),
                    ),
                  Expanded(
                    flex: 2,
                    child: TextField(
              decoration: InputDecoration(labelText: "POPULAR"),
              controller: propopularcontroller,
            ),
                    ),
                  Expanded(
                    flex: 1,
                    child: TextField(
              decoration: InputDecoration(labelText: "ASOCIADA (FEDERADO)"),
              controller: proasociadacontroller,
            ),
                    ),
                ],
              ),

            Text("INTEGRANTES DE LA MESA DIRECTIVA DE ASOCIACIONES, CLUBS O LIGAS"),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextField(
              decoration: InputDecoration(labelText: "PRESIDENTE"),
              controller: propresicontroller,
            ),
                ),
                Expanded(
                  flex: 1,
                  child: TextField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              controller: protelefonopresicontroller,
            ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextField(
              decoration: InputDecoration(labelText: "SECRETARIO"),
              controller: prosecrecontroller,
            ),
                ),
                Expanded(
                  flex: 1,
                  child: TextField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              controller: protelefonosecrecontroller,
            ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextField(
              decoration: InputDecoration(labelText: "TESORERO"),
              controller: protesocontroller,
            ),
                ),
                Expanded(
                  flex: 1,
                  child: TextField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              controller: protelefonotesocontroller,
            ),
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(labelText: "UNIDAD DEPORTIVA DONDE DESARROLLA LA ACTIVIDAD"),
              controller: proubicacioncontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "DOMICILIO DE LA UNIDAD DEPORTIVA"),
              controller: prodomiciliocontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "DIAS DE ACTIVIDAD"),
              controller: prodiasactcontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "HORARIO"),
              controller: prohorascontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "codigo postal"),
              controller: procodpostalcontroller,
            ),
            RaisedButton(
              onPressed: saverecord,
              child: Text('Guardar'),
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

  final now = DateTime.now();

  final segurocontroller = TextEditingController();
  final pronombreperscontroller = TextEditingController();
  final pronombreasocontroller = TextEditingController();
  final prodiciplinacontroller = TextEditingController();
  final procategoriacontroller = TextEditingController();
  final prodireccioncontroller = TextEditingController();
  final protelefonocontroller = TextEditingController();
  final proemailcontroller = TextEditingController();
  final procurpcontroller = TextEditingController();
  final procontactoemercontroller = TextEditingController();
  final protelefonoemercontroller = TextEditingController();
  final prosangrecontroller = TextEditingController();
  final propopularcontroller = TextEditingController();
  final proasociadacontroller = TextEditingController();
  final propresicontroller = TextEditingController();
  final protelefonopresicontroller = TextEditingController();
  final prosecrecontroller = TextEditingController();
  final protelefonosecrecontroller = TextEditingController();
  final proubicacioncontroller = TextEditingController();
  final prodomiciliocontroller = TextEditingController();
  final prodiasactcontroller = TextEditingController();
  final prohorascontroller = TextEditingController();
  final procargocontroller = TextEditingController();
  final protesocontroller = TextEditingController();
  final protelefonotesocontroller = TextEditingController();
  final procodpostalcontroller = TextEditingController();

  late int protelefono = int.parse(protelefonocontroller.text);
  late int protelefonoemer = int.parse(protelefonoemercontroller.text);
  late int protelefonopresi = int.parse(protelefonopresicontroller.text);
  late int protelefonosecre = int.parse(protelefonosecrecontroller.text);
  late int prohoras = int.parse(prohorascontroller.text);
  late int protelefonoteso = int.parse(protelefonotesocontroller.text);
  late int procodpostal = int.parse(procodpostalcontroller.text);

  saverecord() async
  {
      try {
        var res = await http.post(
          Uri.parse(API.save),
          body: { 
            'fecha': now.toString(), 
            'seguro': segurocontroller.text, 
            'nombrepers': pronombreperscontroller.text, 
            'nombreaso': pronombreasocontroller.text, 
            'diciplina': prodiciplinacontroller.text, 
            'categoria': procategoriacontroller.text, 
            'direccion': prodireccioncontroller.text, 
            'telefono': protelefonocontroller.text, 
            'email': proemailcontroller.text, 
            'curp': procurpcontroller.text, 
            'contactoemer': procontactoemercontroller.text, 
            'telefonoemer': protelefonoemercontroller.text, 
            'sangre': prosangrecontroller.text, 
            'popular': propopularcontroller.text, 
            'asociada': proasociadacontroller.text, 
            'presi': propresicontroller.text, 
            'telefonopresi': protelefonopresicontroller.text, 
            'secre': prosecrecontroller.text, 
            'telefonosecre': protelefonosecrecontroller.text, 
            'ubicacion': proubicacioncontroller.text, 
            'domicilio': prodomiciliocontroller.text, 
            'diasact': prodiasactcontroller.text, 
            'hora': prohorascontroller.text, 
            'cargo': procargocontroller.text, 
            'teso': protesocontroller.text, 
            'telefonoteso': protelefonotesocontroller.text, 
            'codpostal': procodpostalcontroller.text
          },
        );

        if(res.statusCode == 200){
          var resBodyOfSave = jsonDecode(res.body);
          if(resBodyOfSave['success']==true){
            Fluttertoast.showToast(msg: 'saved successfully');
          }else{
            Fluttertoast.showToast(msg: 'error no se pudo');
          }
        }
      } catch (e) {
        print(e.toString());
        Fluttertoast.showToast(msg: e.toString());
        print(e);
      }
  }

  final formkey = GlobalKey<FormState>();

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
            TextField(
              decoration: InputDecoration(labelText: "CUENTA CON SEGURO?"),
              controller: segurocontroller,
            ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
              decoration: InputDecoration(labelText: "NOMBRE PROMOTOR/DEPORTISTA"),
              controller: pronombreperscontroller,
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextField(
              decoration: InputDecoration(labelText: "CARGO"),
              controller: procargocontroller,
            ),
                  )
                ],
              ),
            TextField(
              decoration: InputDecoration(labelText: "NOMBRE DE ASOCIACION, LIGA, CLUB, CENTRO DE FORMACION Y/O ACADEMIA"),
              controller: pronombreasocontroller,
            ),
            Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
              decoration: InputDecoration(labelText: "DISCIPLINA DEPORTIVA"),
              controller: prodiciplinacontroller,
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextField(
              decoration: InputDecoration(labelText: "CATEGORIA"),
              controller: procategoriacontroller,
            ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
              decoration: InputDecoration(labelText: "DIRECCION"),
              controller: prodireccioncontroller,
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              controller: protelefonocontroller,
            ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
              decoration: InputDecoration(labelText: "CORREO ELECTRONICO"),
              controller: proemailcontroller,
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextField(
              decoration: InputDecoration(labelText: "CURP"),
              controller: procurpcontroller,
            ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
              decoration: InputDecoration(labelText: "EN CASO DE EMERGENCIA NOMBRE"),
              controller: procontactoemercontroller,
            ),
                    ),
                Expanded(
                  flex: 1,
                  child: TextField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              controller: protelefonoemercontroller,
            ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextField(
              decoration: InputDecoration(labelText: "TIPO DE SANGRE"),
              controller: prosangrecontroller,
            ),
                    ),
                  Expanded(
                    flex: 2,
                    child: TextField(
              decoration: InputDecoration(labelText: "POPULAR"),
              controller: propopularcontroller,
            ),
                    ),
                  Expanded(
                    flex: 1,
                    child: TextField(
              decoration: InputDecoration(labelText: "ASOCIADA (FEDERADO)"),
              controller: proasociadacontroller,
            ),
                    ),
                ],
              ),

            Text("INTEGRANTES DE LA MESA DIRECTIVA DE ASOCIACIONES, CLUBS O LIGAS"),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextField(
              decoration: InputDecoration(labelText: "PRESIDENTE"),
              controller: propresicontroller,
            ),
                ),
                Expanded(
                  flex: 1,
                  child: TextField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              controller: protelefonopresicontroller,
            ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextField(
              decoration: InputDecoration(labelText: "SECRETARIO"),
              controller: prosecrecontroller,
            ),
                ),
                Expanded(
                  flex: 1,
                  child: TextField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              controller: protelefonosecrecontroller,
            ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextField(
              decoration: InputDecoration(labelText: "TESORERO"),
              controller: protesocontroller,
            ),
                ),
                Expanded(
                  flex: 1,
                  child: TextField(
              decoration: InputDecoration(labelText: "TELEFONO"),
              controller: protelefonotesocontroller,
            ),
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(labelText: "UNIDAD DEPORTIVA DONDE DESARROLLA LA ACTIVIDAD"),
              controller: proubicacioncontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "DOMICILIO DE LA UNIDAD DEPORTIVA"),
              controller: prodomiciliocontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "DIAS DE ACTIVIDAD"),
              controller: prodiasactcontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "HORARIO"),
              controller: prohorascontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: "codigo postal"),
              controller: procodpostalcontroller,
            ),
            RaisedButton(
              onPressed: saverecord,
              child: Text('Guardar'),
              ),
            ]
          ),
        ),)
        ),
    );
  }
}