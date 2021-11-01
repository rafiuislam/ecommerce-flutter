import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_1/widgets/themes.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .p8
        .rounded
        .color(MyTheme.creamColor)
        .make()
        .p16();
  }
}
