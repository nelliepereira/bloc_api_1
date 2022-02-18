part of 'photos_bloc.dart';

abstract class PhotosEvent extends Equatable {
  const PhotosEvent();
}

class LoadPhotoEvent extends PhotosEvent {
  @override

  List<Object?> get props => [];

}
