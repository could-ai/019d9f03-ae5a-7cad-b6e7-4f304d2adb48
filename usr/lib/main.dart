import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'comparison_screen.dart';
import 'detail_screen.dart';
import 'references_screen.dart';

void main() {
  runApp(const BrigatinibReviewApp());
}

class BrigatinibReviewApp extends StatelessWidget {
  const BrigatinibReviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brigatinib Analysis Review',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0D47A1), // Deep blue for scientific feel
          secondary: const Color(0xFF00BFA5),
          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF0D47A1)),
          titleLarge: TextStyle(fontWeight: FontWeight.w600),
          bodyLarge: TextStyle(fontSize: 16, height: 1.5),
        ),
        cardTheme: CardTheme(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          clipBehavior: Clip.antiAlias,
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (context) => const HomeScreen());
        } else if (settings.name == '/comparison') {
          return MaterialPageRoute(builder: (context) => const ComparisonScreen());
        } else if (settings.name == '/detail') {
          final techniqueId = settings.arguments as String;
          return MaterialPageRoute(builder: (context) => DetailScreen(techniqueId: techniqueId));
        } else if (settings.name == '/references') {
          return MaterialPageRoute(builder: (context) => const ReferencesScreen());
        }
        return null;
      },
    );
  }
}
