import 'package:flutter/material.dart';
import '../../../ui/components/input.dart';
import '../../../ui/components/button.dart';
import '../../../ui/components/card.dart';
import '../../../core/design_tokens.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();
  String _lastQuery = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSearch(String q) {
    setState(() => _lastQuery = q.trim());
    // TODO: connect to search provider
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Searching: $q')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DT.surface,
      appBar: AppBar(title: const Text('Books Finder'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AppCard(
              child: Row(
                children: [
                  Expanded(
                    child: AppInput(
                      controller: _controller,
                      hint: 'Search books by title, author, or ISBN',
                      onSubmitted: _onSearch,
                    ),
                  ),
                  const SizedBox(width: 8),
                  CustomButton.primary(
                    label: 'Search',
                    onPressed: () => _onSearch(_controller.text),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            if (_lastQuery.isEmpty)
              Expanded(
                child: Center(
                  child: Text(
                    'Try searching for "Clean Code" or "Flutter"',
                    style: DT.textTheme(DT.muted).bodyLarge,
                  ),
                ),
              )
            else
              Expanded(
                child: ListView.separated(
                  itemCount: 6,
                  separatorBuilder: (_, __) => const SizedBox(height: 12),
                  itemBuilder: (context, index) => AppCard(
                    onTap: () {},
                    child: Row(
                      children: [
                        Container(
                          width: 56,
                          height: 80,
                          color: Colors.grey.shade200,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Book title #$index',
                                style: DT.textTheme().titleMedium,
                              ),
                              const SizedBox(height: 6),
                              Text(
                                'Author name',
                                style: DT.textTheme().bodyMedium,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        CustomButton.ghost(label: 'Preview', onPressed: () {}),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
