import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram/core/entities/user_entity.dart';
import 'package:instagram/core/repositories/user_repository.dart';

@Singleton(as: UserRepository)
class UserService extends UserRepository {
  UserService(super.serverApi);

  @override
  Future<Either<String, UserEntity>> getUser({required String id}) {
    // TODO: implement getUser
    throw UnimplementedError();
  }
}
