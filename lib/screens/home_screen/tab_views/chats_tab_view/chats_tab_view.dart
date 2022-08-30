import 'package:flutter/material.dart';
import 'placeholder_contacts.dart';
import 'widgets/chat_contact_template.dart';

class ChatsTabView extends StatelessWidget {
  const ChatsTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          for (int i = 0; i < placeholderContacts.length; i++)
            ChatContactTemplate(
              contactName: placeholderContacts[i]['contactName'],
              lastMessage: placeholderContacts[i]['lastMessage'],
              lastContactTime: placeholderContacts[i]['lastContactTime'],
              profileImage: placeholderContacts[i]['profileImage'],
            ),
        ],
      ),
    );
  }
}
