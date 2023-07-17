int hexaColor(String color) {
  String sColor = '0xff$color';
  String dColor = sColor.replaceAll('#', '');
  var finalColor = int.parse(dColor);
  return finalColor;
}
