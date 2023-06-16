import 'package:flutter/material.dart';
import 'package:movie_app_poc/constant/dimens.dart';
import 'package:movie_app_poc/widgets/title_widget.dart';
import '../../constant/color.dart';
import '../../widgets/popular_list_view_widget.dart';
import '../../widgets/squad_listview_widget.dart';
import '../../widgets/story_line_listview_widget.dart';
class StoryLinePageItemView extends StatelessWidget {
  const StoryLinePageItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>[
        SliverAppBar(
          pinned: true,
          automaticallyImplyLeading: false,
          expandedHeight: kSP450x,
          backgroundColor: Colors.black,
          flexibleSpace: FlexibleSpaceBar(
            title: const Center(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("Culpa mia", style: TextStyle(fontSize: kSP30x,fontWeight: FontWeight.bold))),
            ),
            background: Stack(
                children:[
                  SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.network("https://www.hindustantimes.com/ht-img/img/2023/03/13/550x309/Boruto_Naruto_next_generations_1678671204076_1678671209565_1678671209565.jpg"
                        ,fit:BoxFit.cover),
                  ),
                  Positioned(
                      top: kSP80x,left: kSP10x,
                      child: Container(
                        width: kSP50x,
                        height: kSP50x,
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(kSP50x),
                        ),
                        child: IconButton(
                          color: kIconColor,
                          iconSize: kSP35x,
                          icon: const Icon(Icons.arrow_back,),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ))
                ]
            ),
          ),
        )
      ],
        body: ListView(
          children: const [
            TitleWidget(title: "Story line"),
            Padding(
              padding: EdgeInsets.all(kSP20x),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: TextStyle(fontSize: kSP18x,
                    color: kSecondaryTextColor),textAlign: TextAlign.justify, ),
            ),
            TitleWidget(title: "Star Cast"),
            StoryLineListViewWidget(),
            SizedBox(
              height: kSP20x,
            ),
            TitleWidget(title: "Talent Squad"),
            SquadListviewWidget(),
            SizedBox(
              height: kSP20x,
            ),
            TitleWidget(title: "Production Company"),
            Padding(
              padding: EdgeInsets.only(left: kSP20x, right: kSP20x,top: kSP100x,bottom: kSP20x),
              child: Row(
                children: [
                  Text("Pokeepsie Films",
                    style: TextStyle(fontSize: kSP20x,
                        color: kSecondaryTextColor, fontWeight: FontWeight.bold), ),
                  SizedBox(
                    width: kSP30x,
                  ),
                  Text("Amazon Studios",
                    style: TextStyle(fontSize: kSP20x,
                        color: kSecondaryTextColor, fontWeight: FontWeight.bold), ),

                ],
              ),
            ),
            SizedBox(
              height: kSP20x,
            ),
            TitleWidget(title: "Recommended"),
            PopularListViewWidget(),


          ],
        ),

      ),
    );
  }
}
