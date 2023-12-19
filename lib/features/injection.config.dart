// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;
import 'package:remind_me/app/database/secure_storage.dart' as _i6;
import 'package:remind_me/app/database/user_dao.dart' as _i7;
import 'package:remind_me/core/data/base_remote_data_source.dart' as _i8;
import 'package:remind_me/core/data/error_handler.dart' as _i9;
import 'package:remind_me/core/network/network_info.dart' as _i5;

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
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.Client>(() => registerModule.client);
    gh.lazySingleton<_i4.InternetConnectionChecker>(
        () => registerModule.internetConnectionChecker);
    gh.lazySingleton<_i5.NetworkInfo>(
        () => _i5.NetworkInfoImpl(gh<_i4.InternetConnectionChecker>()));
    gh.lazySingleton<_i6.SecureStorage>(() => _i6.SecureStorage());
    gh.lazySingleton<_i7.UserDao>(() => _i7.UserDao(gh<_i6.SecureStorage>()));
    gh.lazySingleton<_i8.BaseRemoteDataSource>(
        () => _i8.BaseRemoteDataSourceImpl(
              gh<_i3.Client>(),
              gh<_i7.UserDao>(),
            ));
    gh.lazySingleton<_i9.ErrorHandler>(
        () => _i9.ErrorHandler(gh<_i5.NetworkInfo>()));
    return this;
  }
}

class _$RegisterModule extends _i8.RegisterModule {}
