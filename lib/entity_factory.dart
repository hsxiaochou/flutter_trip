import 'package:flutter_trip/model/home_page_bean_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "HomePageBeanEntity") {
      return HomePageBeanEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}