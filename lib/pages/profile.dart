import 'package:flutter/material.dart';
import '../widgets/header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(16),
        child: const Column(
          children: [
            SectionHeader(
              title: 'У вас подключено', 
              subtitle: 'Подписки, автоплатежи и сервисы на которые вы подписались'
            )
          ],
        ),
    );
  }
}
