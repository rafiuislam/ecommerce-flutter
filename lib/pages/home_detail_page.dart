import 'package:flutter/material.dart';
import 'package:flutter_app_1/models/catalog.dart';
import 'package:flutter_app_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        // backgroundColor: MyTheme.creamColor,
        bottomNavigationBar: Container(
          color: MyTheme.creamColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: const EdgeInsets.all(0.0),
            children: [
              "\$ ${catalog.price}".text.bold.xl4.red800.make(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(MyTheme.darkBluishColor),
                    shape: MaterialStateProperty.all(const StadiumBorder())),
                child: "Buy".text.make(),
              ).wh(100, 50)
            ],
          ).p32(),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(
                  catalog.image,
                ),
              ).h32(context),
              Expanded(
                  child: VxArc(
                height: 30,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: MyTheme.creamColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4
                          .color(MyTheme.darkBluishColor)
                          .bold
                          .make(),
                      catalog.desc.text
                          .color(MyTheme.darkBluishColor.withOpacity(.8))
                          .xl
                          .make(),
                      10.heightBox,
                      "Jelly sweet roll jelly beans biscuit pie macaroon chocolate donut. Carrot cake caramels pie sweet apple pie tiramisu carrot cake."
                          .text
                          .make()
                          .p8()
                    ],
                  ).py64(),
                ),
              )),
            ],
          ).backgroundColor(Colors.white),
        ));
  }
}
