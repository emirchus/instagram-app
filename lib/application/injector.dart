import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram/application/injector.config.dart';


@InjectableInit()
configInjector(
  GetIt getIt, {
  String? env,
  EnvironmentFilter? environmentFilter,
}) {
  return getIt.init(
    environmentFilter: environmentFilter,
    environment: env,
  );
}