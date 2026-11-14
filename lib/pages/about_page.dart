import 'package:flutter/material.dart';

import '../data/profile_data.dart';
import '../routes.dart';
import '../widgets/app_bottom_nav.dart';
import '../widgets/page_title.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 8),
            // Profile picture with a colored ring.
            CircleAvatar(
              radius: 76,
              backgroundColor: scheme.primary,
              child: const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
            const SizedBox(height: 20),
            const PageTitle(icon: Icons.info_outline, title: 'About Page'),
            const SizedBox(height: 8),
            Text(
              ProfileData.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              ProfileData.role,
              style: TextStyle(color: scheme.primary),
            ),
            const SizedBox(height: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  ProfileData.bio,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: [
                for (final skill in ProfileData.skills)
                  Chip(
                    avatar: const Icon(Icons.check_circle, size: 18),
                    label: Text(skill),
                  ),
              ],
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () => Navigator.pushNamed(context, AppRoutes.contact),
              icon: const Icon(Icons.arrow_forward),
              label: const Text('Go to Contact'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const AppBottomNav(currentIndex: 1),
    );
  }
}
