import 'package:dartz/dartz.dart';
import '../error/failures.dart';

/// Common type definitions used throughout the application
typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef ResultVoid = Future<Either<Failure, void>>;
typedef DataMap = Map<String, dynamic>;
