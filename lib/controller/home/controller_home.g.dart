// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_home.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ControllerHome on ControllerHomeBase, Store {
  late final _$indexAtom =
      Atom(name: 'ControllerHomeBase.index', context: context);

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  late final _$ControllerHomeBaseActionController =
      ActionController(name: 'ControllerHomeBase', context: context);

  @override
  void setIndex(int value) {
    final _$actionInfo = _$ControllerHomeBaseActionController.startAction(
        name: 'ControllerHomeBase.setIndex');
    try {
      return super.setIndex(value);
    } finally {
      _$ControllerHomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
index: ${index}
    ''';
  }
}
