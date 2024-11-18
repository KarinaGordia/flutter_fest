import 'package:flutter/material.dart';
import 'package:flutter_fest/resources/resources.dart';

class ScheduleTabWidget extends StatelessWidget {
  const ScheduleTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const AppBarLogoWidget(),
        SliverList.list(children: [
          Container(height: 100, color: Colors.white,),
          Container(height: 100, color: Colors.transparent,),
          Container(height: 100, color: Colors.white,),
          Container(height: 100, color: Colors.transparent,),
          Container(height: 100, color: Colors.white,),
          Container(height: 100, color: Colors.transparent,),
          Container(height: 100, color: Colors.transparent,),
          Container(height: 100, color: Colors.transparent,),
          Container(height: 100, color: Colors.transparent,),
          Container(height: 100, color: Colors.transparent,),
          Container(height: 100, color: Colors.transparent,),
        ],),
      ],
    );
  }
}

class AppBarLogoWidget extends StatelessWidget {
  const AppBarLogoWidget({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Image.asset(Images.appBarBg),
            Positioned(
              top: 64,
              right: 20,
              child: Image.asset(Images.appBarSurfLogo),
            ),
            Positioned(
              top: 84,
              left: 20,
              child: Image.asset(Images.appBarFfLogo),
            ),
          ],
        ),
      ),

      ///TO DO: add collapsedHeight mode

      expandedHeight: 200,
      floating: false,
      pinned: true,
      snap: false,
    );
  }
}
