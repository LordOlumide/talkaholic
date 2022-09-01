import 'package:flutter/material.dart';
import 'package:talkaholic/constants/theme/app_theme.dart';
import 'widgets/chat_screen_appbar.dart';

class ChattingScreen extends StatelessWidget {
  static const screen_id = 'Chatting screen';

  final String contactName;

  const ChattingScreen({Key? key, required this.contactName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: ChatScreenAppBar(contactName: contactName),
      body: Column(
        children: [
          // Messages ListView
          Expanded(
            child: ListView(
              children: [
                for (int i = 0; i < 100; i++)
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text('$i'),
                  ),
              ],
            ),
          ),
          // Bottom textfield and stuff
          Row(
            children: [
              // TextField container
              Expanded(
                child: Container(
                  height: 48.0,
                  margin: const EdgeInsets.fromLTRB(5, 5, 0, 5),
                  decoration: BoxDecoration(
                    color: Theme.of(context).messageContainerColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    children: [
                      // emoji icon, textfield, attachments icon, camera icon
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.emoji_emotions_outlined,
                          color: Theme.of(context).messageContainerIconsColor,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: const InputDecoration(
                            hintText: 'Message',
                            border: InputBorder.none,
                          ),
                          textCapitalization: TextCapitalization.sentences,
                          onSubmitted: (newMessage) {},
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.attach_file,
                          color: Theme.of(context).messageContainerIconsColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.camera_alt,
                          color: Theme.of(context).messageContainerIconsColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 48.0,
                padding: EdgeInsets.zero,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
