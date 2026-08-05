import 'package:flutter/material.dart'; //parent for any widget

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'WhatsApp',
            style: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 0.5),
          ),
          actions: [
            IconButton(icon: const Icon(Icons.camera_alt_outlined), onPressed: () {}),
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            PopupMenuButton<String>(
              onSelected: (value) {},
              itemBuilder: (BuildContext context) => [
                const PopupMenuItem(value: 'New group', child: Text('New group')),
                const PopupMenuItem(value: 'New broadcast', child: Text('New broadcast')),
                const PopupMenuItem(value: 'Linked devices', child: Text('Linked devices')),
                const PopupMenuItem(value: 'Starred messages', child: Text('Starred messages')),
                const PopupMenuItem(value: 'Settings', child: Text('Settings')),
              ],
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3.5,
            labelColor: Colors.black,
            unselectedLabelColor: Color(0xB3FFFFFF),
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            tabs: [
              Tab(text: 'Chats'),
              Tab(text: 'Updates'),
              Tab(text: 'Calls'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ChatsTab(),
            Center(child: Text('Updates Screen (Status)', style: TextStyle(fontSize: 18))),
            Center(child: Text('Calls Screen', style: TextStyle(fontSize: 18))),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF00A884), // Accent green FAB
          foregroundColor: Colors.white,
          child: const Icon(Icons.message),
        ),
      ),
    );
  }
}

class ChatsTab extends StatelessWidget {
  const ChatsTab({super.key});

  // Mock data representing a typical WhatsApp data stream
  final List<Map<String, String>> chatData = const [
    {
      'name': 'Alex Rivera',
      'message': 'Hey! Are we still meeting up later today?',
      'time': '10:42 AM',
      'unread': '2',
      'avatar': 'https://pravatar.cc'
    },
    {
      'name': 'Design Team',
      'message': 'Sarah: Please review the updated Flutter layouts.',
      'time': '9:15 AM',
      'unread': '0',
      'avatar': 'https://pravatar.cc'
    },
    {
      'name': 'John Doe',
      'message': '🎯 The project looks solid. Great work!',
      'time': 'Yesterday',
      'unread': '0',
      'avatar': 'https://pravatar.cc'
    },
    {
      'name': 'Emma Watson',
      'message': 'Let me check my calendar and get right back to you.',
      'time': 'Yesterday',
      'unread': '5',
      'avatar': 'https://pravatar.cc'
    },
    {
      'name': 'Michael Scott',
      'message': 'That\'s what she said! 😂',
      'time': '27/07/2026',
      'unread': '0',
      'avatar': 'https://pravatar.cc'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatData.length,
      padding: const EdgeInsets.symmetric(vertical: 4),
      itemBuilder: (context, index) {
        final chat = chatData[index];
        final bool hasUnread = chat['unread'] != '0';

        return InkWell(
          onTap: () {
            // Action to navigate into an individual conversation thread
          },
          child: ListTile(
            leading: CircleAvatar(
              radius: 26,
              backgroundColor: Colors.grey.shade300,
              backgroundImage: NetworkImage(chat['avatar']!),
            ),
            title: Text(
              "Names",
              // style: const TextStyle(
              //   fontWeight: FontWeight.bold,
              //   fontSize: 16.5,
              // ),
            ),
            subtitle: Text(
              chat['message']!,
              maxLines: 1,
              // overflow: TextOverflow.ellipsis,
              // style: TextStyle(
              //   color: Colors.grey.shade600,
              //   fontSize: 14,
              // ),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  chat['time']!,
                  style: TextStyle(
                    color: hasUnread ? const Color(0xFF25D366) : Colors.grey,
                    fontSize: 12,
                    fontWeight: hasUnread ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 6),
                if (hasUnread)
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: Color(0xFF25D366), // WhatsApp Unread green badge
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      chat['unread']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                else
                  const SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }
}