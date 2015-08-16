library catan_randomizer.web.main.generated_type_uris;

import 'package:angular/core_dom/type_to_uri_mapper.dart';
import 'package:catan_randomizer/component/catan_board/catan_board.dart' as import_0;
import 'package:catan_randomizer/component/catan_hex/catan_hex.dart' as import_1;

/// Used when URIs have been converted to be page-relative at build time.
class _StaticTypeToUriMapper implements TypeToUriMapper {
  Uri uriForType(Type type) {
    var uri = _uriMapping[type];
    if (uri == null) {
      throw new StateError('Unable to find URI mapping for $type');
    }
    return uri;
  }
}

final typeToUriMapper = new _StaticTypeToUriMapper();

final Map<Type, Uri> _uriMapping = <Type, Uri> {
  import_0.CatanBoardComponent: Uri.parse(r'''package:catan_randomizer/component/catan_board/catan_board.dart'''),
  import_1.CatanHexComponent: Uri.parse(r'''package:catan_randomizer/component/catan_hex/catan_hex.dart'''),
};
