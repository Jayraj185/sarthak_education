import 'package:get/get.dart';
import 'package:sarthak_education/Screens/HomeScreen/model/HomeModel.dart';

class HomeController extends GetxController
{
  RxList<HomeModel> homeGridList = <HomeModel>[
    HomeModel(name: "Today's",image: "today.png"),
    HomeModel(name: "About Us",image: "about_us.png"),
    HomeModel(name: "Management Message",image: "management.png"),
    HomeModel(name: "Achievement",image: "achievement.png"),
    HomeModel(name: "Activity",image: "activity.png"),
    HomeModel(name: "Notice",image: "notice.png"),
    HomeModel(name: "Facility",image: "facility.png"),
    HomeModel(name: "Gallery",image: "gallery.png"),
    HomeModel(name: "Student Zone",image: "student_zone.png"),
    HomeModel(name: "Alumni",image: "alumni.png"),
    HomeModel(name: "Admission",image: "admission.png"),
    HomeModel(name: "Contact Us",image: "contact_us.png"),
  ].obs;
}