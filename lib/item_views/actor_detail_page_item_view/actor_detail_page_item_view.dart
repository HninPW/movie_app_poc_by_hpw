import 'package:flutter/material.dart';
import 'package:movie_app_poc/constant/dimens.dart';
import 'package:movie_app_poc/widgets/information_widget.dart';
import '../../constant/color.dart';
import '../../widgets/you_may_like_list_view_widget.dart';
class ActorDetailPageItemView extends StatelessWidget {
  const ActorDetailPageItemView({Key? key}) : super(key: key);

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
                  child: Text("Gary Oldman", style: TextStyle(fontSize: kSP30x,fontWeight: FontWeight.bold))),
            ),
            background: Stack(
              children:[
                SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTR-ObnQ906QeuOEBhCQ3h0tmQSO3KIZJnB-Q&usqp=CAU"
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
            Padding(
              padding: EdgeInsets.all(kSP20x),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Biography",
                    style: TextStyle(fontSize: kSP28x,
                        color: kPrimaryTextColor, fontWeight: FontWeight.bold), ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: kSP20x, right: kSP20x),
              child: Divider(
                  color: kPrimaryTextColor,
                thickness: 2,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(kSP20x),
                child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: TextStyle(fontSize: kSP18x,
                      color: kSecondaryTextColor),textAlign: TextAlign.justify, ),
            ),
            Padding(
              padding: EdgeInsets.only(left: kSP20x, right: kSP20x),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: TextStyle(fontSize: kSP18x,
                    color: kSecondaryTextColor),textAlign: TextAlign.justify, ),
            ),
            Padding(
              padding: EdgeInsets.all(kSP20x),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: TextStyle(fontSize: kSP18x,
                    color: kSecondaryTextColor),textAlign: TextAlign.justify, ),
            ),
            Padding(
              padding: EdgeInsets.all(kSP20x),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("More Information",
                  style: TextStyle(fontSize: kSP28x,
                      color: kPrimaryTextColor, fontWeight: FontWeight.bold), ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: kSP20x, right: kSP20x),
              child: Divider(
                color: kPrimaryTextColor,
                thickness: 2,
              ),
            ),
            InformationWidget(titleText: "Place Of Birth", detailText: "New Cross, London, England,UK"),
            InformationWidget(titleText: "BirthDay", detailText: "1958-03-21"),
            InformationWidget(titleText: "DeadDay", detailText: "-"),
            InformationWidget(titleText: "Gender", detailText: "Male"),
            InformationWidget(titleText: "Popularity", detailText: "299.571"),
            SizedBox(
              height: kSP20x,
            ),
            Padding(
              padding: EdgeInsets.all(kSP20x),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Known For",
                  style: TextStyle(fontSize: kSP28x,
                      color: kPrimaryTextColor, fontWeight: FontWeight.bold), ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: kSP20x, right: kSP20x),
              child: Divider(
                color: kPrimaryTextColor,
                thickness: 2,
              ),
            ),
            YouMayLikeListViewWidget(),


    ],
        ),
        
      ),
    );
  }
}
