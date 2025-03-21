import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';

//esta classe isnt a provider
//O estado inicial é um conjunto de produtos (Set<Product>)
class CartNotifier extends Notifier<Set<Product>> {
  //valor inicial
  @override
  Set<Product> build() {
    return const {
      Product(id: '4', title: 'Red Backpack', price: 14, image: 'assets/products/backpack.png'),
    };
  }

  //metodos para atualizar o estado
  //diciona um produto ao carrinho
  void addProduct(Product product) {
    if (!state.contains(product)) {
      state = {...state, product}; //Cria um novo conjunto com o novo produto
    }
  }

  void removeProduct(Product product) {
    if (state.contains(product)) {
      state = state.where((p) => p.id != product.id).toSet();
    }
  }
}

final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>(() {
  return CartNotifier();
});
