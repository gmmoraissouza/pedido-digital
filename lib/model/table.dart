import 'package:json_annotation/json_annotation.dart';

part 'table.g.dart';

@JsonSerializable()
class Table{
  Table(this.id);

  late int id;

  factory Table.fromJson(Map<String, dynamic> json) => _$TableFromJson(json);

  Map<String,dynamic> toJson() => _$TableToJson(this);

}