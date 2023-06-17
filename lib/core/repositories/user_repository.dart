import 'package:either_dart/either.dart';
import 'package:instagram/core/abstracts/server_interface.dart';
import 'package:instagram/core/entities/user_entity.dart';

abstract class UserRepository {
  /// [IServer] is an abstract class that contains all the methods that are used to communicate with the server.
  final IServer serverApi;

  UserRepository(this.serverApi);

  /// Get a user with the given [id].
  /// It returns a [UserEntity] if the user is found.
  /// Otherwise, it returns an error message.
  Future<Either<String, UserEntity>> getUser({required String id});
}
