import 'package:flutter/material.dart';
import 'package:movie_app_poc/widgets/movie_type_widget.dart';

class SingleChildScrollViewWidget extends StatelessWidget {
  const SingleChildScrollViewWidget({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> moviesType = ['Adventure', 'Fantasy', 'Animation','Drama','Horror','Action','Comedy','History','Western','Thriller','Crime','Documentary'];
    return SingleChildScrollView(
      padding:  EdgeInsets.all(20),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          MovieTypeWidget(textBoxName: moviesType[0],isFirstText:true),
          MovieTypeWidget(textBoxName: moviesType[1]),
          MovieTypeWidget(textBoxName: moviesType[2]),
          MovieTypeWidget(textBoxName: moviesType[3]),
          MovieTypeWidget(textBoxName: moviesType[4]),
          MovieTypeWidget(textBoxName: moviesType[5]),
          MovieTypeWidget(textBoxName: moviesType[6]),
          MovieTypeWidget(textBoxName: moviesType[7]),
          for (var i = 1; moviesType.length < i; i++)
            MovieTypeWidget(textBoxName: moviesType.elementAt(i)),
          //for ( int j in moviesType ) MovieTypeWidget(textBoxName: moviesType[i]),
        ],
      ),
    );
  }
}




