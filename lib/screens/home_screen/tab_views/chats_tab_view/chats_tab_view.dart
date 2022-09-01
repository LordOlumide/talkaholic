import 'package:flutter/material.dart';
import 'placeholder_contacts.dart';
import 'widgets/chat_contact_template.dart';

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
          ),
    );
  }
}
