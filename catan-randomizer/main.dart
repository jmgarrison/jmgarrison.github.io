library catan_randomizer;

import 'package:angular/angular.dart';
import 'package:angular/application_factory_static.dart';

import 'package:catan_randomizer/uri/resource_url_resolver_wrapper.dart';
import 'package:catan_randomizer/component/catan_board/catan_board.dart';
import 'package:catan_randomizer/component/catan_hex/catan_hex.dart';
import 'package:catan_randomizer/formatter/slice.dart';
import 'main_generated_type_factory_maps.dart' show setStaticReflectorAsDefault;
import 'main_static_expressions.dart' as generated_static_expressions;
import 'main_static_metadata.dart' as generated_static_metadata;
import 'main_static_type_to_uri_mapper.dart' as generated_static_type_to_uri_mapper;

class CatanRandomizerModule extends Module {
  CatanRandomizerModule() {
    bind(CatanBoardComponent);
    bind(CatanHexComponent);
    bind(SliceFilter);
    bind(ResourceResolverConfig, toValue: new ResourceResolverConfig.resolveRelativeUrls(false));
    bind(ResourceUrlResolver, toImplementation: ResourceUrlResolverWrapper);
  }
}

void main() {
  setStaticReflectorAsDefault();
  staticApplicationFactory(generated_static_metadata.typeAnnotations, generated_static_expressions.getters, generated_static_expressions.setters, generated_static_expressions.symbols, generated_static_type_to_uri_mapper.typeToUriMapper)
  .addModule(new CatanRandomizerModule())
  .run();
}