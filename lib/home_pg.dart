import 'package:bloc_api_1/Service%20%20n%20Repository/photo_repository.dart';
import 'package:bloc_api_1/bloc/photos_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PhotosBloc(
              RepositoryProvider.of<PhotoRepository>(context),
            )..add(LoadPhotoEvent()),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('My Photos'),
          ),
          body: BlocBuilder<PhotosBloc, PhotosState>(builder: (context, state) {
            if (state is PhotoLoadingState) {
              return const CircularProgressIndicator();
            } else if (state is PhotoLoadedSuccessfulState) {
              return SizedBox(
                 height: 400,
                 width: 900,
                child: ListView.builder(
                    // shrinkWrap: true,
                    itemCount: state.photoList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Text(state.photoList[index].title.toString()),
                          Image.network(state.photoList[index].url.toString()),
                          Text(state.photoList[index].albumId.toString()),
                        ],
                      );
                    }),
              );
            } else if (state is PhotoLoadingErrorState) {
              return const Text('Error');
            } else {
              return Container();
            }
          }),
        ));
  }
}
