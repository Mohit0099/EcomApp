import 'package:ecom/models/product.dart';

class CartModel {
  static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;

  late Product _catalog;
  final List<int> _itemIds = [];
  Product get catalog => _catalog;
  set catalog(Product newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Product> get products =>
      _itemIds.map((id) => _catalog.getById(id)).toList();

  num get totalPrice =>
      products.fold(0, (total, current) => total + current.price);

  //Add items
  void add(Product item) {
    _itemIds.add(item.id);
  }

  void remove(Product item) {
    _itemIds.remove(item.id);
  }
}
