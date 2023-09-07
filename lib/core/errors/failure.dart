part of core;

abstract class Failure extends Equatable {
  final String message;
  final List<dynamic> properties;

  const Failure([this.message = '', this.properties = const <dynamic>[]]);

  @override
  List<Object?> get props => [message, properties];
}

class DownloadServiceFailure extends Failure {}

class PhotosRemoteDatasourceFailure extends Failure {
  const PhotosRemoteDatasourceFailure(super.message);
}
