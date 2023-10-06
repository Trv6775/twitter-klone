import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:twitter_klone/constants/constants.dart';

import 'package:twitter_klone/core/core.dart';
import 'package:twitter_klone/models/models.dart';

final userAPIProvider = Provider(
  (ref) => UserAPI(
    db: ref.watch(appwriteDatabaseProvider),
  ),
);

abstract class IUserAuthAPI {
  FutureEitherVoid saveUserData(UserModel userModel);
}

class UserAPI implements IUserAuthAPI {
  final Databases _db;

  UserAPI({required Databases db}) : _db = db;

  @override
  FutureEitherVoid saveUserData(UserModel userModel) async {
    try {
      await _db.createDocument(
        databaseId: AppwriteConstants.databaseId,
        collectionId: AppwriteConstants.usersCollectionId,
        documentId: ID.unique(),
        data: userModel.toMap(),
      );
      return right(null);
    } on AppwriteException catch (e, stackTrace) {
      return left(
        Failure(e.message ?? 'Some unexpected error occurred', stackTrace),
      );
    } catch (e, stackTrace) {
      return left(
        Failure(e.toString(), stackTrace),
      );
    }
  }
}
