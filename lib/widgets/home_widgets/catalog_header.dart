import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_1/widgets/themes.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.color(context.theme.accentColor).bold.make(),
        "Trending products".text.xl2.make()
      ],
    );
  }
}
