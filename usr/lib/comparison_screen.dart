import 'package:flutter/material.dart';
import 'models.dart';

class ComparisonScreen extends StatelessWidget {
  const ComparisonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Method Comparison'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            clipBehavior: Clip.antiAlias,
            child: DataTable(
              headingRowColor: MaterialStateProperty.resolveWith(
                (states) => theme.colorScheme.primaryContainer,
              ),
              dataRowColor: MaterialStateProperty.resolveWith(
                (states) => Colors.white,
              ),
              columnSpacing: 24.0,
              headingTextStyle: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onPrimaryContainer,
              ),
              columns: const [
                DataColumn(label: Text('Technique')),
                DataColumn(label: Text('Linearity Range')),
                DataColumn(label: Text('LOD')),
                DataColumn(label: Text('LOQ')),
                DataColumn(label: Text('Sample Matrix')),
              ],
              rows: techniques.map((technique) {
                return DataRow(
                  cells: [
                    DataCell(
                      Text(
                        technique.shortName,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataCell(Text(technique.linearityRange)),
                    DataCell(Text(technique.lod)),
                    DataCell(Text(technique.loq)),
                    DataCell(
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 150),
                        child: Text(
                          technique.sampleMatrix,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
