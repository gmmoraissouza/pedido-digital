// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_menu_table.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ControllerMenuTable on ControllerMenuTableBase, Store {
  late final _$quantityAtom =
      Atom(name: 'ControllerMenuTableBase.quantity', context: context);

  @override
  int get quantity {
    _$quantityAtom.reportRead();
    return super.quantity;
  }

  @override
  set quantity(int value) {
    _$quantityAtom.reportWrite(value, super.quantity, () {
      super.quantity = value;
    });
  }

  late final _$ControllerMenuTableBaseActionController =
      ActionController(name: 'ControllerMenuTableBase', context: context);

  @override
  Product lanches(int index) {
    final _$actionInfo = _$ControllerMenuTableBaseActionController.startAction(
        name: 'ControllerMenuTableBase.lanches');
    try {
      return super.lanches(index);
    } finally {
      _$ControllerMenuTableBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increment() {
    final _$actionInfo = _$ControllerMenuTableBaseActionController.startAction(
        name: 'ControllerMenuTableBase.increment');
    try {
      return super.increment();
    } finally {
      _$ControllerMenuTableBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$ControllerMenuTableBaseActionController.startAction(
        name: 'ControllerMenuTableBase.decrement');
    try {
      return super.decrement();
    } finally {
      _$ControllerMenuTableBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
quantity: ${quantity}
    ''';
  }
}
