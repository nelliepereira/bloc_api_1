import 'dart:convert';
import 'package:bloc_api_1/Model/photos_model.dart';
import 'package:bloc_api_1/Service%20%20n%20Repository/photo_service.dart';

class PhotoRepository{
  Future<List<PhotoModel>> getPhotoDataFromApi() async {
    final response = await PhotoService.getRequest();

    if(response.statusCode == 200) {
      List<PhotoModel> photoData = [];
      var tempList = jsonDecode(response.body);
      tempList.forEach((element){
        photoData.add(PhotoModel.fromJson(element));
      });
        return photoData;
    } else {
      return [];
    }

  }

}

