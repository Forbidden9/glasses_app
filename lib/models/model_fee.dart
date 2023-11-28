
class Fees{
  String text;
  String image;

  Fees(this.text, this.image);
}

final repairFees = [
  Fees("Ajuste de espejuelos", "lib/images/fee/ajuste.jpeg"),
  Fees("Par de almohadillas", ""),
  Fees("Patas de espejuelos", "lib/images/fee/patas.jpeg"),
  Fees("Nylon de alambre para gafas", ""),
  Fees("Terminales", ""),
  Fees("Tornillos", "lib/images/fee/patas.jpeg"),
  Fees("Tornillos con tuercas", ""),
  Fees("Soldadura simple con ajuste", ""),
  Fees("Soldadura compleja", "lib/images/fee/soldadura.jpeg")
];

final opticaFees = [
  Fees("Corte y monta", ""),
  Fees("Refracción ocular", "lib/images/fee/consulta.jpg"),
];
