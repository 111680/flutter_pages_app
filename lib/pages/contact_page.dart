import 'package:flutter/material.dart';

import '../data/profile_data.dart';
import '../widgets/app_bottom_nav.dart';
import '../widgets/page_title.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Contact')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            // Envelope image inside a white circle with a colored border.
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(color: scheme.primary, width: 4),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/contact_icon.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const PageTitle(icon: Icons.contact_mail, title: 'Contact Page'),
            const SizedBox(height: 8),
            Text(
              'Feel free to reach out to me!',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 20),
            const _ContactTile(
              icon: Icons.email,
              label: 'Email',
              value: ProfileData.email,
            ),
            const _ContactTile(
              icon: Icons.phone,
              label: 'Phone',
              value: ProfileData.phone,
            ),
            const _ContactTile(
              icon: Icons.location_on,
              label: 'Location',
              value: ProfileData.location,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const AppBottomNav(currentIndex: 2),
    );
  }
}

class _ContactTile extends StatelessWidget {
  const _ContactTile({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(child: Icon(icon)),
        title: Text(label),
        subtitle: Text(value),
      ),
    );
  }
}
