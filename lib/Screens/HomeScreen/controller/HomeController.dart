import 'package:get/get.dart';
import 'package:sarthak_education/Screens/AboutUsScreen/view/AboutUsPage.dart';
import 'package:sarthak_education/Screens/HomeScreen/model/HomeModel.dart';
import 'package:sarthak_education/Screens/TodayScreen/view/TodayPage.dart';

class HomeController extends GetxController
{
  RxList<HomeModel> homeGridList = <HomeModel>[
    HomeModel(name: "Today's",image: "today.png",page: const TodayPage()),
    HomeModel(name: "About Us",image: "about_us.png",page: AboutUsPage()),
    HomeModel(name: "Management Message",image: "management.png",page: null),
    HomeModel(name: "Achievement",image: "achievement.png",page: null),
    HomeModel(name: "Activity",image: "activity.png",page: null),
    HomeModel(name: "Notice",image: "notice.png",page: null),
    HomeModel(name: "Facility",image: "facility.png",page: null),
    HomeModel(name: "Gallery",image: "gallery.png",page: null),
    HomeModel(name: "Student Zone",image: "student_zone.png",page: null),
    HomeModel(name: "Alumni",image: "alumni.png",page: null),
    HomeModel(name: "Admission",image: "admission.png",page: null),
    HomeModel(name: "Contact Us",image: "contact_us.png",page: null),
  ].obs;
  RxDouble hwSize = 50.0.obs;
  RxList<HomeModel> DrawerList = <HomeModel>[
    HomeModel(name: "Today's",image: "today.png",page: TodayPage()),
    HomeModel(name: "Trustee Message",image: "trustee.png",page: AboutUsPage()),
    HomeModel(name: "About Us",image: "about_us.png",page: null),
    HomeModel(name: "Management Message",image: "management.png",page: null),
    HomeModel(name: "Achievement",image: "achievement.png",page: null),
    HomeModel(name: "Principle Message",image: "principle.png",page: null),
    HomeModel(name: "Activity",image: "activity.png",page: null),
    HomeModel(name: "Notice",image: "notice.png",page: null),
    HomeModel(name: "Facility",image: "facility.png",page: null),
    HomeModel(name: "Gallery",image: "gallery.png",page: null),
    HomeModel(name: "Student Zone",image: "student_zone.png",page: null),
    HomeModel(name: "Alumni",image: "alumni.png",page: null),
    HomeModel(name: "Events",image: "events.png",page: null),
    HomeModel(name: "Admission",image: "admission.png",page: null),
    HomeModel(name: "Contact Us",image: "contact_us.png",page: null),
    HomeModel(name: "Syllabus",image: "syllabus.png",page: null),
    HomeModel(name: "Developer Details",image: "developer.png",page: null),
    HomeModel(name: "Privacy Policy",image: "privacy.png",page: null),
  ].obs;

}