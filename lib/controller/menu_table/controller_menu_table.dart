import 'package:pedido_digital/model/list_product.dart';
import 'package:pedido_digital/model/product.dart';
import 'package:mobx/mobx.dart';

part 'controller_menu_table.g.dart';

class ControllerMenuTable = ControllerMenuTableBase with _$ControllerMenuTable;

abstract class ControllerMenuTableBase with Store {
  List categBebidas =
      products.where((element) => element['type'] == 'bebida').toList();
  List categPorcoes =
      products.where((element) => element['type'] == 'porção').toList();
  List categLanches =
      products.where((element) => element['type'] == 'lanche').toList();
  Product product = Product();

  @observable
  int quantity = 1;

  @action
  Product lanches(int index) {
    product.name = categLanches[index]['product'];
    product.description = categLanches[index]['description'];
    product.price = categLanches[index]['price'];
    return product;
  }

  Product porcoes(int index) {
    product.name = categPorcoes[index]['product'];
    product.description = categPorcoes[index]['description'];
    product.price = categPorcoes[index]['price'];
    return product;
  }

  Product bebidas(int index) {
    product.name = categBebidas[index]['product'];
    product.description = categBebidas[index]['description'];
    product.price = categBebidas[index]['price'];
    return product;
  }

  @action
  void increment() {
    quantity++;
  }

  @action
  void decrement() {
    quantity--;
  }
}
