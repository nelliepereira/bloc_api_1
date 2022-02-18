part of 'photos_bloc.dart';

abstract class PhotosState extends Equatable {
  const PhotosState();
}

class PhotoLoadingState extends PhotosState {
  @override
  List<Object> get props => [];
}

//Loading Successful Event
class PhotoLoadedSuccessfulState extends PhotosState {
  final List<PhotoModel> photoList;
  const PhotoLoadedSuccessfulState({required this.photoList});

  @override
  List<Object> get props => [photoList];

}

//Loading Unsuccessful Event
class PhotoLoadingErrorState extends PhotosState {
  final String errMessage;
  const PhotoLoadingErrorState({required this.errMessage});

  @override
  // TODO: implement props
  List<Object?> get props => [errMessage];
}