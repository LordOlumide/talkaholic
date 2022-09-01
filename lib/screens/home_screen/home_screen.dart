import 'package:flutter/material.dart';
// tabs
import 'tab_views/camera_tab_view/camera_tab_view.dart';
import 'tab_views/chats_tab_view/chats_tab_view.dart';
import 'tab_views/status_tab_view/status_tab_view.dart';
import 'tab_views/calls_tab_view/calls_tab_view.dart';
// widgets
import 'widgets/home_screen_appbar.dart';
import 'widgets/floating_action_button.dart';
import 'widgets/small_tab_widget.dart';

class HomeScreen extends StatefulWidget {
  static const screen_id = 'Home screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  IconData fabIcon = Icons.message;

  @override
  void initState() {
    tabController = TabController(
      length: 4,
      initialIndex: 1,
      vsync: this,
    );
    tabController.addListener(() {
      refreshFABIcon();
    });
    super.initState();
  }

  void refreshFABIcon() {
    setState(() {
      switch(tabController.index) {
        case 0:
          break;
        case 1:
          fabIcon = Icons.message;
          break;
        case 2:
          fabIcon = Icons.camera_enhance;
          break;
        case 3:
          fabIcon = Icons.call;
          break;
      }
    });
  }

  @override
  void dispose() {
    tabController.removeListener(refreshFABIcon);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, _) => [
          HomeScreenAppBar(tabController: tabController),
        ],
        body: TabBarView(
          controller: tabController,
          children: const [
            CameraTabView(),
            ChatsTabView(),
            StatusTabView(),
            CallsTabView(),
          ],
        ),
      ),
      floatingActionButton: HomeScreenFAB(fabIcon: fabIcon),
    );
  }
}
