
import 'package:bloc/bloc.dart';
import 'package:bloc_api_1/Model/photos_model.dart';
import 'package:bloc_api_1/Service%20%20n%20Repository/photo_repository.dart';
import 'package:equatable/equatable.dart';

part 'photos_event.dart';
part 'photos_state.dart';

class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  final PhotoRepository photoRepository;

  PhotosBloc(this.photoRepository) : super(PhotoLoadingState()) {
    on<PhotosEvent>((event, emit) async {
          emit(PhotoLoadingState());
        try{
          final photoFetch = await photoRepository.getPhotoDataFromApi();
          emit(PhotoLoadedSuccessfulState(photoList: photoFetch));

        }catch (e){
          emit(PhotoLoadingErrorState(errMessage: e.toString()));
        }
    });
  }
}
