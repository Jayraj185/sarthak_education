import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sarthak_education/Utils/Widgets.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Widgets.widgets.CustomAppBarBG(),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: Get.width/75,),
                    Text(
                      "About Us",
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    )
                  ],
                ),
                Container(
                  width: Get.width,
                  margin: EdgeInsets.only(top: Get.width/45,right: Get.width/25,left: Get.width/25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  padding: EdgeInsets.all(Get.width/25),
                  alignment: Alignment.topLeft,
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: Get.width/33),
                          child: Text(
                            "Committed To Excellence In Education.".toUpperCase(),
                            style: GoogleFonts.inter(
                                color: Widgets.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          ),
                        ),
                        Container(
                          height: Get.width/2,
                          width: Get.width,
                          margin: EdgeInsets.only(top: Get.width/75),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(9)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(9),
                            child: Image.network("https://images.shiksha.com/mediadata/images/1570089988phpUY1Zhq.jpeg",fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          height: Get.height/2,
                          margin: EdgeInsets.only(top: Get.width/21),
                          padding: EdgeInsets.all(Get.width/25),
                          decoration: BoxDecoration(
                            color: Widgets.blue.withOpacity(0.20),
                            borderRadius: BorderRadius.circular(9)
                          ),
                          alignment: Alignment.center,
                          child: SingleChildScrollView(
                            child: Text(
                              "SARTHAK EDUCATION - Rewind back to 2004 when Dr. Jitender Aggarwal’s life and career, took a completely different turn. He started losing his vision due to a non-treatable concern- Macular Degeneration of retina and suddenly his career and life came to a halt. But he knew he can’t sit and mope.\n\n''My vision was diminishing, but I kept on believing it is the challenges only that strengthen you.'' Says Dr. Aggarwal. He learnt medical transcription and tried working out on everything that would come to his knowledge to support his family. One day, a thought dawned on him.\n\n''Weren't there, many others like me grappling with many disabilities? I had some kind of financial backup, several others didn't. Couldn’t I help a few others pick up what I was doing? People gave them charity, some even trained them but no one empowered them find sustainable jobs.''\n\n''even trained them but no one empowered them  find sustainable jobs.''\n\nSince last 14 years, Sarthak is committedly working for the people with disabilities, their families and communities to create sustainable change and make an inclusive India with equal dignity & respect for Divyangjans. Today we can say that Sarthak is a young yet successful NGO working towards mainstreaming Persons with disability. Having aninclusive workforce , Sarthak team understands what it takes to ensure that no one is left behind.Programs and services have been designed to ensure that a large group of youth with disabilities is able to access quality skill education and training opportunities.",
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 12
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
