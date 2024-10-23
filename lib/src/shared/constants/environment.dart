import 'package:flutter/services.dart';
import 'package:yaml/yaml.dart';

/// Environment variables
class Environment {
  /// TvMaze API base URL
  late final String tvMazeBaseUrl;

  /// Load environment variables
  loadEnvironment() async {
    final String yamlString =
        await rootBundle.loadString('assets/env/env.yaml');
    final Map yamlMap = loadYaml(yamlString);
    tvMazeBaseUrl = yamlMap['tvMazeBaseUrl'];
  }
}
