import 'package:final_hackathon/constants/colors._constant.dart';
import 'package:final_hackathon/views/widgets/less_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LessonTabbar extends StatefulWidget {
  const LessonTabbar({Key? key}) : super(key: key);

  @override
  State<LessonTabbar> createState() => _LessonTabbarState();
}

class _LessonTabbarState extends State<LessonTabbar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          child: TabBar(
            unselectedLabelStyle:
                const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            labelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            labelColor: const Color(0xff2EC4B6),
            unselectedLabelColor: const Color(0xff697B7A),
            controller: _tabController,
            tabs: const [
              Text('Details',style: TextStyle(fontSize: 16,)),
              Text('Lessons',style: TextStyle(fontSize: 16,)),
              Text('Review',style: TextStyle(fontSize: 16,)),
            ],
          ),
        ),
        Container(
          height: 200,
          child: TabBarView(
            controller: _tabController,
            children: const [
              TabBarWidgets(),
             TabBarWidgets(),
              TabBarWidgets(),
            ],
          ),
        ),
      ],
    );
  }
}