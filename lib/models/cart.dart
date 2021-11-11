import 'package:flutter_app_1/core/store.dart';
import 'package:flutter_app_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  // //singleones
  // static final cartModel = CartModel._internal();

  // CartModel._internal();

  // factory CartModel() => cartModel;
  // //singleones//

  late CatalogModel _catalog;

  final List<int> _itemIds = [];

  // Get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get Items in cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get Total Price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // // Add Item
  // void add(Item item) {
  //   _itemIds.add(item.id);
  // }

  // // Remove Item
  // void remove(Item item) {
  //   _itemIds.remove(item.id);
  // }
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);

  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);

  @override
  perform() {
    store?.cart._itemIds.remove(item.id);
  }
}
