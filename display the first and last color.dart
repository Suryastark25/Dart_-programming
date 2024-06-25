void main() {
  List<String> colorList = ["Red", "Green", "White", "Black"];

  if (colorList.isNotEmpty) {
    String firstColor = colorList.first;
    String lastColor = colorList.last;

    print('First color: $firstColor');
    print('Last color: $lastColor');
  } else {
    print('The color list is empty.');
  }
}
