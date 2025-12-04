# Books Finder — Flutter Portfolio App

Professional, production-oriented Flutter app that demonstrates a senior-level
approach to architecture, design systems, accessibility, testing and release
readiness. The app is a polished demo of searching for books, viewing details,
and saving favorites. It uses the `books_finder` package for remote data and a
Tailwind-inspired design system implemented in Flutter to match modern UI
patterns (inspired by Tailwind CSS and shadcn components).

**Repository:** `d:/Books_Finder/books_finder_app`

**Highlights:**
- **Clean architecture:** Presentation / Domain / Data separation; DI bootstrap.
- **Design system:** Tailwind-like design tokens + shadcn-style reusable
	components (`lib/core/design_tokens.dart`, `lib/ui/components`).
- **State & DI:** Riverpod for state management; `lib/di/di.dart` for app
	initialization.
- **Persistence:** Lightweight local cache and favorites (Hive prepared).
- **Quality:** Lints, analyzer checks and a CI-ready structure.

**What this README contains:** Implementation summary, design decisions,
developer setup, run/build instructions, testing, and portfolio guidance.

**Project status:** Prototype UI and skeleton architecture implemented. Next
steps commonly include wiring `books_finder` integration, repository
implementation, pagination and offline caching (see `IMPLEMENTATION_GUIDE.md`).

**Where to start reading code:**
- `lib/main.dart` — app bootstrap (Riverpod ProviderScope + DI init)
- `lib/app/app.dart` — app shell and navigation
- `lib/core/design_tokens.dart` — design tokens (Tailwind-like)
- `lib/ui/components/` — shadcn-style reusable components (Button, Card,
	Input)
- `lib/features/` — feature folders (search, favorites) with presentation,
	domain and data placeholders

**Design & Architecture Notes**

- The UI is implemented with a design-token-first approach: color palette,
	spacing scale and typography live in `design_tokens.dart` and drive all
	component styles. This mirrors Tailwind's utility-driven philosophy while
	using Flutter idioms.
- Reusable components (Buttons, Cards, Inputs) follow a shadcn-style API: small,
	composable, accessible and theme-aware.
- Domain models and repository interfaces live in feature folders to keep the
	presentation layer decoupled from third-party DTOs (`books_finder` types are
	mapped in the data layer).

## Developer Setup (Prerequisites)

- Install Flutter (stable) and ensure `flutter` is on your PATH.
- Android SDK and platform tools for Android builds. For iOS builds you need
	Xcode on macOS.
- For APK installation on Windows, have `adb` available (part of Android
	platform-tools).

Verify your environment with:

```powershell
flutter --version
flutter doctor -v
```

## Install dependencies

From the project root run:

```powershell
Set-Location -Path 'D:\Books_Finder\books_finder_app'
flutter pub get
```

## Run (Debug)

Start the app on an emulator or attached device:

```powershell
flutter run
```

## Build APK (Debug)

Create a debug APK for manual testing/install:

```powershell
Set-Location -Path 'D:\Books_Finder\books_finder_app'
flutter build apk --debug
```

Output (example):

`build\app\outputs\flutter-apk\app-debug.apk`

## Build APK (Release)

To produce a signed release APK you must provide a keystore and configure
`android/app/build.gradle`. For a quick unsigned release (not recommended for
Store publishing) you can run:

```powershell
flutter build apk --release
```

For Play Store publishing, follow Flutter's signing guide and add the
keystore properties to `android/key.properties` and configure signing in
`android/app/build.gradle`.

## Testing

- Unit and widget test scaffolding exists under `test/`.
- Run tests with:

```powershell
flutter test
```

Integration tests (end-to-end) should be added under `integration_test/` and
configured in CI.

## Quality, Linting & CI

- The project uses `flutter_lints` and `dart analyze` is run locally and should
	be configured as a CI step. Add GitHub Actions workflows to run analysis,
	tests, and build checks per PR.

## Portfolio Presentation Guidance

- Include 4–6 high-quality screenshots: Search, Search Results, Book Detail,
	Favorites, Settings (if added) and an adaptive/tablet shot.
- Record a 60–90 second demo video showcasing search -> detail -> favorite
	and offline/caching behavior once implemented.
- Document trade-offs and architecture rationale in `IMPLEMENTATION_GUIDE.md`.

## Future Improvements / Roadmap

- Implement `RemoteDataSource` using `books_finder` and map DTOs to domain
	models.
- Add pagination, exponential backoff, and robust cache invalidation.
- Implement full offline-first support for favorites and last-search results.
- Add accessibility testing and localization (i18n).
- Add CI workflows and distribution signing for release builds.

## Where to find the implementation guide

See the step-by-step implementation plan at: `IMPLEMENTATION_GUIDE.md` — this
file contains the full professional implementation checklist and design
decisions used when building this app.

---

If you want I can now: wire the `books_finder` integration, implement the
repository and Riverpod providers so the Search page shows live data, or
proceed with UI polish and accessibility fine-tuning. Tell me which to do
next.
