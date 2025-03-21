import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';

//esta classe isnt a provider
class CartNotifier extends Notifier<Set<Product>> {
  //valor inicial
  @override
  Set<Product> build() {
    return const {
      Product(id: '4', title: 'Red Backpack', price: 14, image: 'assets/products/backpack.png'),
    };
  }

  //metodos para atualizar o estado
}

final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>(() {
  return CartNotifier();
});
