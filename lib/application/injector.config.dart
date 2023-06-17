// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:instagram/application/services/posts_service.dart' as _i6;
import 'package:instagram/application/services/server_local.dart' as _i4;
import 'package:instagram/application/services/user_service.dart' as _i8;
import 'package:instagram/core/abstracts/server_interface.dart' as _i3;
import 'package:instagram/core/repositories/post_repository.dart' as _i5;
import 'package:instagram/core/repositories/user_repository.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.IServer>(_i4.ServerLocal());
    gh.singleton<_i5.PostRepository>(_i6.PostService(gh<_i3.IServer>()));
    gh.singleton<_i7.UserRepository>(_i8.UserService(gh<_i3.IServer>()));
    return this;
  }
}
