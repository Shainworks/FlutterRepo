## Emulator Booting
1. Quick boot :- The emulator starts from the last state when it was closed
2. Cold boot :- The emulator starts from the dead

## Stateless Widgets
In Flutter, a Stateless Widget is a widget that describes part of the user interface and does not depend on any mutable state. It is immutable, meaning once it is built, it cannot change its appearance or behavior during its lifetime.

Key Characteristics:

1. Immutability: Stateless widgets cannot update their internal state after they are built. If you want to reflect changes in the UI, you must rebuild the widget by triggering a parent widget to pass new data.
2. Performance: Stateless widgets are lightweight because they do not hold any state, making them ideal for UI components that are static or do not change over time.
3. Build Method: Stateless widgets override the build method, where you define the UI using a tree of other widgets.


When to Use a Stateless Widget:

1. When the UI does not change dynamically.
2. For displaying static content such as text, images, or icons.
3. As a base widget for other widgets that rely on external inputs rather than internal state.
4. If you need a widget that can change dynamically based on user interaction or other events, use a Stateful Widget instead.

## Hot reload
Hot reload in Flutter is a powerful feature that allows developers to instantly apply code changes to a running application without restarting it. This feature is especially useful during development for quick iterations and debugging.

### How Hot Reload Works with `Widget build`:
1. **The `build` method is called whenever the widget tree needs to be rebuilt.**
    - If you make changes to a widget's UI or layout and save the file, Flutter's hot reload will trigger the `build` method for the updated widget.
    - It reconstructs only the affected part of the widget tree without losing the app's current state (if it's using a `StatefulWidget`).

2. **For Stateless Widgets:**
    - Hot reload rebuilds the entire widget since `StatelessWidget` has no mutable state.
    - Any change in the UI will immediately reflect in the app after saving.

3. **For Stateful Widgets:**
    - Hot reload preserves the widget's current state and updates only the affected UI.
    - The state remains intact, and only the `build` method is called to update the UI with the new code.

---

### Steps to Test Hot Reload:
1. Run the app using the `flutter run` command or an IDE like **Android Studio**, **VS Code**, or **IntelliJ IDEA**.
2. Modify the `Text` widget or its style in the `build` method (e.g., change the font size or color).
3. Save the file (`Ctrl + S` or `Cmd + S`).
4. **Hot reload will apply the changes instantly** to the running app without restarting it.

---

### When Hot Reload Cannot Be Used:
Hot reload won't work in the following scenarios:
- If the change involves the app's `main()` method or initial state setup.
- If the application depends on native platform changes (e.g., modifying native iOS or Android code).
- For certain plugin changes that require a full restart.

### Advantages of Hot Reload:
- **Fast development cycle**: Immediate feedback on UI changes.
- **Preserves state**: The app's current state remains intact during hot reload.
- **Improves productivity**: Reduces downtime and debugging effort.