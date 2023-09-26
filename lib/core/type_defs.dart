 import 'package:fpdart/fpdart.dart';
import 'package:twitter_klone/core/failure.dart';


typedef FutureEither<T>=Future<Either<Failure,T>>;
/*The below type def is basically the above FutureEither but with the
* success being void
* Basically if it's a success we don't want to return anything*/
typedef FutureEitherVoid=FutureEither<void>;