import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreenAppBar extends StatelessWidget {
  final TabController tabController;

  const HomeScreenAppBar({Key? key, required this.tabController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        tabs: [
          SizedBox(
            width: 10.0.w,
            child: const Tab(
              icon: Icon(Icons.camera_alt),
            ),
          ),
          const Tab(
            text: 'CHATS',
          ),
          const Tab(
            text: 'STATUS',
          ),
          const Tab(
            text: 'CALLS',
          ),
        ],
      ),
    );
  }
}
