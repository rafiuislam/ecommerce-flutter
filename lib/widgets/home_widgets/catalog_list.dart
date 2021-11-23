import 'package:flutter/material.dart';
import 'package:flutter_app_1/core/store.dart';
import 'package:flutter_app_1/models/catalog.dart';
import 'package:flutter_app_1/pages/home_detail_page.dart';
import 'package:flutter_app_1/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/widgets.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MyStore store = VxState.store;
    return Scrollbar(
      thickness: 3,
      radius: const Radius.circular(10),
      child: VxBuilder(
        mutations: {SearchMutation},
        builder: (context, _, status) => ListView.builder(
          shrinkWrap: true,
          itemCount: store.items.length,
          itemBuilder: (context, index) {
            final catalog = store.items[index];
            return InkWell(
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeDetailPage(catalog: catalog),
                      ),
                    ),
                child: CatalogItem(catalog: catalog));
          },
        ),
      ),
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.lg.color(context.accentColor).bold.make(),
                catalog.desc.text
                    .color(context.accentColor.withOpacity(.8))
                    .make(),
                5.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: const EdgeInsets.all(0.0),
                  children: [
                    "\$ ${catalog.price}".text.bold.xl.make(),
                    AddToCart(catalog: catalog)
                  ],
                ).pOnly(right: 8)
              ],
            ),
          ),
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().py16();
  }
}
