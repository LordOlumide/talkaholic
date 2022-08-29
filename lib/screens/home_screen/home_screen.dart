import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const screen_id = 'Home screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      length: 4,
      initialIndex: 1,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.secondary,
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
          tabs: const [
            Tab(
              icon: Icon(Icons.camera),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Center(
            child: Text('Camera Tab view'),
          ),
          Center(
            child: Text('chats tab view'),
          ),
          Center(
            child: Text('status Tab view'),
          ),
          Center(
            child: Text('calls Tab view'),
          ),
        ],
      ),
    );
  }
}
