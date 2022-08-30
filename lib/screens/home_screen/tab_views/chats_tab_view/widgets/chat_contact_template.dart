import 'package:flutter/material.dart';

class ChatContactTemplate extends StatelessWidget {
  String contactName;
  String lastMessage;
  DateTime lastContactTime;
  String? profileImage;

  ChatContactTemplate({
    Key? key,
    required this.contactName,
    required this.lastMessage,
    required this.lastContactTime,
    this.profileImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: Theme.of(context).colorScheme.primary,
      child: Row(
        children: [
          // Profile image
          CircleAvatar(
            child: profileImage != null
                ? Image.asset('profileImage')
                : const Icon(
                    Icons.person,
                    size: 30,
                  ),
          ),

          Column(
            children: [
              // Contact name and time last edited
              Row(
                children: [
                  Text(
                    contactName,
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      fontSize: 16,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    lastContactTime.toString(),
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyMedium!.color,
                    ),
                  ),
                ],
              ),

              // Last message
              Text(
                lastMessage,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyMedium!.color,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
