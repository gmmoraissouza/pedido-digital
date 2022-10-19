import 'package:pedido_digital/model/list_product.dart';
import 'package:pedido_digital/model/order_product.dart';
import 'package:mobx/mobx.dart';

part 'controller_kitchen.g.dart';

class ControllerKitchen = ControllerKitchenBase with _$ControllerKitchen;

abstract class ControllerKitchenBase with Store {
  @action
  OrderProduct itemOne() {
    OrderProduct orderProduct = OrderProduct();
    orderProduct.product.name = products[3]['product'];
    orderProduct.product.description = products[3]['description'];
    orderProduct.product.price = products[3]['price'];
    orderProduct.quantity = 4;
    orderProduct.table = 5;
    return orderProduct;
  }

  OrderProduct itemTwo() {
    OrderProduct orderProduct = OrderProduct();
    orderProduct.product.name = products[8]['product'];
    orderProduct.product.description = products[8]['description'];
    orderProduct.product.price = products[8]['price'];
    orderProduct.quantity = 1;
    orderProduct.table = 8;
    return orderProduct;
  }

  OrderProduct itemThree() {
    OrderProduct orderProduct = OrderProduct();
    orderProduct.product.name = products[14]['product'];
    orderProduct.product.description = products[14]['description'];
    orderProduct.product.price = products[14]['price'];
    orderProduct.quantity = 2;
    orderProduct.table = 15;
    return orderProduct;
  }
}
