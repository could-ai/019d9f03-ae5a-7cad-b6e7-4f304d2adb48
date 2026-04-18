import 'package:flutter/material.dart';
import 'models.dart';

class DetailScreen extends StatelessWidget {
  final String techniqueId;

  const DetailScreen({super.key, required this.techniqueId});

  @override
  Widget build(BuildContext context) {
    final technique = techniques.firstWhere((t) => t.id == techniqueId);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(technique.shortName),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              technique.name,
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.primary,
              ),
            ),
            const SizedBox(height: 16),
            _buildSection(context, 'Description', technique.description, Icons.info_outline),
            _buildSection(context, 'Principle', technique.principle, Icons.lightbulb_outline),
            
            const SizedBox(height: 16),
            Text(
              'Analytical Parameters',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: theme.colorScheme.outlineVariant),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    _buildParameterRow('Sample Matrix', technique.sampleMatrix),
                    const Divider(),
                    _buildParameterRow('Linearity Range', technique.linearityRange),
                    const Divider(),
                    _buildParameterRow('LOD', technique.lod),
                    const Divider(),
                    _buildParameterRow('LOQ', technique.loq),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 24),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: _buildListSection(
                    context, 
                    'Advantages', 
                    technique.advantages, 
                    Icons.check_circle_outline, 
                    Colors.green.shade700
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildListSection(
                    context, 
                    'Disadvantages', 
                    technique.disadvantages, 
                    Icons.cancel_outlined, 
                    Colors.red.shade700
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, String content, IconData icon) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 20, color: theme.colorScheme.secondary),
              const SizedBox(width: 8),
              Text(
                title,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: theme.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }

  Widget _buildParameterRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w600, color: Colors.grey),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListSection(BuildContext context, String title, List<String> items, IconData icon, Color color) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 18, color: color),
            const SizedBox(width: 8),
            Text(
              title,
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ...items.map((item) => Padding(
          padding: const EdgeInsets.only(bottom: 6.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('• ', style: TextStyle(color: color, fontWeight: FontWeight.bold)),
              Expanded(
                child: Text(
                  item,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        )),
      ],
    );
  }
}
