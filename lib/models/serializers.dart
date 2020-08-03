import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:simple_budget/models/category_model.dart';

part 'serializers.g.dart';

@SerializersFor(const [CategoryModel])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
