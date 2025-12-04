import 'package:flutter/material.dart';
import '../../../ui/components/card.dart';
import '../../../core/design_tokens.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DT.surface,
      appBar: AppBar(title: const Text('Favorites'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: 3,
          separatorBuilder: (_, __) => const SizedBox(height: 12),
          itemBuilder: (context, index) => AppCard(
            child: Row(
              children: [
                Container(width: 56, height: 80, color: Colors.grey.shade200),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Favorite Book #$index',
                        style: DT.textTheme().titleMedium,
                      ),
                      const SizedBox(height: 6),
                      Text('Author', style: DT.textTheme().bodyMedium),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
