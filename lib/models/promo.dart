class Promo{
  int? formulario_id;
  DateTime? fecha;
  String? seguro;
  String? nombrepers;
  String? nombreaso;
  String? diciplina;
  String? categoria;
  String? direccion;
  int? telefono;
  String? email;
  String? curp;
  String? contactoemer;
  int? telefonoemer;
  String? sangre;
  String? popular;
  String? asociada;
  String? presi;
  int? telefonopresi;
  String? secre;
  int? telefonosecre;
  String? ubicacion;
  String? domicilio;
  String? diasact;
  int? horas;
  String? cargo;
  String? teso;
  int? telefonoteso;
  int? codpostal;

  Promo(
    this.formulario_id,
    this.fecha,
    this.seguro,
    this.nombrepers,
    this.nombreaso,
    this.diciplina,
    this.categoria,
    this.direccion,
    this.telefono,
    this.email,
    this.curp,
    this.contactoemer,
    this.telefonoemer,
    this.sangre,
    this.popular,
    this.asociada,
    this.presi,
    this.telefonopresi,
    this.secre,
    this.telefonosecre,
    this.ubicacion,
    this.domicilio,
    this.diasact,
    this.horas,
    this.cargo,
    this.teso,
    this.telefonoteso,
    this.codpostal
  );

  Map<String, dynamic> toJson() =>{
    'formulario_id': formulario_id.toString(),
    'fecha': fecha.toString(),
    'seguro': seguro,
    'nombrepers': nombrepers,
    'nombreaso': nombreaso,
    'diciplina': diciplina,
    'categoria': categoria,
    'direccion': direccion,
    'telefono': telefono.toString(),
    'email': email,
    'curp': curp,
    'contactoemer': contactoemer,
    'telefonoemer': telefonoemer.toString(),
    'sangre': sangre,
    'popular': popular,
    'asociada': asociada,
    'presi': presi,
    'telefonopresi': telefonopresi.toString(),
    'secre': secre,
    'telefonosecre': telefonosecre.toString(),
    'ubicacion': ubicacion,
    'domicilio': domicilio,
    'diasact': diasact,
    'horas': horas.toString(),
    'cargo': cargo,
    'teso': teso,
    'telefonoteso': telefonoteso.toString(),
    'codpostal': codpostal.toString()
  };
}