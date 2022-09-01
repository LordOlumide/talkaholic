import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreenAppBar extends StatelessWidget {
  final TabController tabController;

  const HomeScreenAppBar({Key? key, required this.tabController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cameraTabWidth = screenWidth / 24;
    double normalTabWidth = (screenWidth - cameraTabWidth) / 5;

    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      snap: true,
      floating: true,
      pinned: true,
      title: Text(
        'WhatsApp Clone',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      actions: [
        // Search IconButton
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 38),
          child: IconButton(
            icon: Icon(
              Icons.search,
              size: 25,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () {},
          ),
        ),
        // more_vert IconButton
        IconButton(
          icon: Icon(
            Icons.more_vert,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () {},
        ),
      ],
      bottom: TabBar(
        controller: tabController,
        indicatorColor: Theme.of(context).tabBarTheme.labelColor,
        indicatorWeight: 2.5,
        labelPadding: EdgeInsets.symmetric(
            horizontal:
                (screenWidth - (cameraTabWidth + normalTabWidth * 3)) / 8),
        isScrollable: true,
        tabs: [
          SizedBox(
            width: cameraTabWidth,
            child: const Tab(
              icon: Icon(Icons.camera_alt),
            ),
          ),
          SizedBox(
            width: normalTabWidth,
            child: const Tab(
              text: 'CHATS',
            ),
          ),
          SizedBox(
            width: normalTabWidth,
            child: const Tab(
              text: 'STATUS',
            ),
          ),
          SizedBox(
            width: normalTabWidth,
            child: const Tab(
              text: 'CALLS',
            ),
          ),
        ],
      ),
    );
  }
}
