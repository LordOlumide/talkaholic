import 'package:flutter/material.dart';
import '../../../placeholders/placeholder_contacts.dart';
import 'widgets/chat_contact_template.dart';

// Screens
import '../../../chatting_screen/chatting_screen.dart';

class ChatsTabView extends StatelessWidget {
  const ChatsTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: placeholderContacts.length,
      itemBuilder: (context, index) => ChatContactTemplate(
        contactName: placeholderContacts[index]['contactName'],
        lastMessage: placeholderContacts[index]['lastMessage'],
        lastContactTime: placeholderContacts[index]['lastContactTime'],
        profileImage: placeholderContacts[index]['profileImage'],
        onPressed: () {
          Navigator.of(context).pushNamed(ChattingScreen.screen_id,
              arguments: placeholderContacts[index]['contactName']);
        },
      ),
    );
  }
}
