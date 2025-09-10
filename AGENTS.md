# Repository Guidelines

## Project Structure & Module Organization
- `lib/`: Package source. Public API at `lib/flutter_markdown.dart`, internals under `lib/src/`.
- `test/`: Widget and behavior tests (`*_test.dart`).
- `example/`: Minimal Flutter demo entrypoint (`example/example.dart`).
- Root: `pubspec.yaml`, `README.md`, `CHANGELOG.md`, `LICENSE`.

## Build, Test, and Development Commands
- Install deps: `flutter pub get`
- Format code: `dart format .`
- Static analysis: `dart analyze`
- Run tests: `flutter test`
- Optional coverage: `flutter test --coverage`
- Try the demo (device/simulator required): `flutter run -t example/example.dart`

## Coding Style & Naming Conventions
- Use Dart defaults: 2‑space indentation; run `dart format .` before committing.
- Keep analyzer clean: `dart analyze` must pass with no new warnings.
- Naming: types `UpperCamelCase`, members/local `lowerCamelCase`, files `snake_case.dart`.
- Imports: group as `dart:`, `package:`, then relative; prefer trailing commas for multiline constructs.
- Public API should include `///` dartdoc where appropriate.

## Testing Guidelines
- Framework: `flutter_test` (+ `mockito` where useful).
- Place tests in `test/` with names mirroring sources, e.g. `lib/src/builder.dart` → `test/builder_test.dart`.
- Write widget tests for rendering/interaction; avoid real network I/O (use fakes/mocks).
- Add tests with any behavior change; keep tests deterministic.

## Commit & Pull Request Guidelines
- Commits: imperative mood, concise subject (≤72 chars), explain the why in the body.
- Reference issues using `Fixes #123` when applicable.
- Before opening a PR: run `dart format .`, `dart analyze`, and `flutter test` locally.
- PRs should include: clear description, rationale, linked issues, screenshots/GIFs for UI changes, and updates to `CHANGELOG.md`/`README.md` when user‑visible.

## Agent‑Specific Notes
- Keep changes minimal and focused; do not reformat unrelated files.
- Follow the structure and style above; prefer small PRs with tests.
- If adding files, align with existing naming and module layout under `lib/src/`.
