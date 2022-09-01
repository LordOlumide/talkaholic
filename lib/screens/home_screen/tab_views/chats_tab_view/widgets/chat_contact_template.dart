import 'package:flutter/material.dart';
import 'package:talkaholic/helpers/date_helpers.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
      color: Theme.of(context).colorScheme.primary,
      height: 80,
      child: Row(
        children: [
          // Profile image
          CircleAvatar(
            radius: 30,
            child: profileImage != null
                ? Image.asset('profileImage')
                : const Icon(
                    Icons.person,
                    size: 40,
                  ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Contact name and time last edited
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          contactName,
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyLarge!.color,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        formatLastContactTime(lastContactTime),
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyMedium!.color,
                          fontSize: 11.8,
                        ),
                      ),
                    ],
                  ),
                ),

                // Last message
                Expanded(
                  child: Text(
                    lastMessage,
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyMedium!.color,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
