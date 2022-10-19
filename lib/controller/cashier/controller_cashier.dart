import 'package:mobx/mobx.dart';

import '../../model/list_product.dart';
import '../../model/order_product.dart';

part 'controller_cashier.g.dart';

class ControllerCashier = ControllerCashierBase with _$ControllerCashier;

abstract class ControllerCashierBase with Store {

  @action
  double totalPriceTableFive() {
    double totalPrice = (itemOne().product.price * itemOne().quantity) +
        (itemTwo().product.price  * itemTwo().quantity) +
        (itemThree().product.price  * itemThree().quantity);
    return totalPrice;
  }
  double totalPriceTableEight() {
    double totalPrice = (itemFour().product.price  * itemFour().quantity) +
        (itemFive().product.price  * itemFive().quantity) +
        (itemSix().product.price  * itemSix().quantity);
    return totalPrice;
  }
  double totalPriceTableNine() {
    double totalPrice = (itemSeven().product.price  * itemSeven().quantity) +
        (itemEight().product.price  * itemEight().quantity) +
        (itemNine().product.price  * itemNine().quantity);
    return totalPrice;
  }
  double totalPriceTableFifteen() {
    double totalPrice = (itemTen().product.price  * itemTen().quantity) +
        (itemEleven().product.price  * itemEleven().quantity) +
        (itemTwelve().product.price  * itemTwelve().quantity);
    return totalPrice;
  }

  @action
  OrderProduct itemOne() {
    OrderProduct orderProduct = OrderProduct();
    orderProduct.product.name = products[3]['product'];
    orderProduct.product.price = products[3]['price'];
    orderProduct.quantity = 4;
    return orderProduct;
  }

  OrderProduct itemTwo() {
    OrderProduct orderProduct = OrderProduct();
    orderProduct.product.name = products[5]['product'];
    orderProduct.product.price = products[5]['price'];
    orderProduct.quantity = 2;
    return orderProduct;
  }

  OrderProduct itemThree() {
    OrderProduct orderProduct = OrderProduct();
    orderProduct.product.name = products[11]['product'];
    orderProduct.product.price = products[11]['price'];
    orderProduct.quantity = 1;
    return orderProduct;
  }

  OrderProduct itemFour() {
    OrderProduct orderProduct = OrderProduct();
    orderProduct.product.name = products[2]['product'];
    orderProduct.product.price = products[2]['price'];
    orderProduct.quantity = 1;
    return orderProduct;
  }

  OrderProduct itemFive() {
    OrderProduct orderProduct = OrderProduct();
    orderProduct.product.name = products[13]['product'];
    orderProduct.product.price = products[13]['price'];
    orderProduct.quantity = 4;
    return orderProduct;
  }

  OrderProduct itemSix() {
    OrderProduct orderProduct = OrderProduct();
    orderProduct.product.name = products[9]['product'];
    orderProduct.product.price = products[9]['price'];
    orderProduct.quantity = 2;
    return orderProduct;
  }

  OrderProduct itemSeven() {
    OrderProduct orderProduct = OrderProduct();
    orderProduct.product.name = products[7]['product'];
    orderProduct.product.price = products[7]['price'];
    orderProduct.quantity = 2;
    return orderProduct;
  }

  OrderProduct itemEight() {
    OrderProduct orderProduct = OrderProduct();
    orderProduct.product.name = products[2]['product'];
    orderProduct.product.price = products[2]['price'];
    orderProduct.quantity = 3;
    return orderProduct;
  }

  OrderProduct itemNine() {
    OrderProduct orderProduct = OrderProduct();
    orderProduct.product.name = products[9]['product'];
    orderProduct.product.price = products[9]['price'];
    orderProduct.quantity = 1;
    return orderProduct;
  }

  OrderProduct itemTen() {
    OrderProduct orderProduct = OrderProduct();
    orderProduct.product.name = products[11]['product'];
    orderProduct.product.price = products[11]['price'];
    orderProduct.quantity = 1;
    return orderProduct;
  }

  OrderProduct itemEleven() {
    OrderProduct orderProduct = OrderProduct();
    orderProduct.product.name = products[12]['product'];
    orderProduct.product.price = products[12]['price'];
    orderProduct.quantity = 1;
    return orderProduct;
  }

  OrderProduct itemTwelve() {
    OrderProduct orderProduct = OrderProduct();
    orderProduct.product.name = products[3]['product'];
    orderProduct.product.price = products[3]['price'];
    orderProduct.quantity = 5;
    return orderProduct;
  }
}
