/*
Unit One Task: Student Object (Guidance-Only File)

Purpose
- This file contains guidance and comments only. Do not paste or write final code here until you complete the task steps.
- Follow the TODO sections to implement your Student object and mint functions.

References
- Lessons directory (read these first): lessons/
-

----------------------------------------
TODO 1: Module Declaration
----------------------------------------
- Declare the module at the very top of the file.
- Syntax reminder is in the Project Structure lesson.
- Keep it simple and consistent with the package name and file location.

----------------------------------------
TODO 2: Imports
----------------------------------------
- Add only the imports you need.
- Strings library import is required for working with text.
- Implicit modules are available for object creation, transfers, and transaction context.
- Avoid extra unused imports.

----------------------------------------
TODO 3: Define the Student struct
----------------------------------------
- Create a Student type with appropriate abilities for a Sui object.
- Include an ID field for global storage.
- Add fields for name-related data using string types.
- Use concise, clear field names that reflect their purpose.

----------------------------------------
TODO 4: Entry function to mint a demo Student
----------------------------------------
- Write a public entry function that constructs and transfers a Student with sample values.
- Use transaction context to create an object ID and determine the sender.
- Keep the function minimal and readable.

----------------------------------------
TODO 5: Entry function to mint a Student with caller-supplied values
----------------------------------------
- Write a public entry function that accepts name-related values and constructs a Student.
- Use the same transaction context pattern for object creation and transfer.
- Ensure the parameters are typed correctly for CLI invocation.

----------------------------------------
Stretch Goals (optional)
----------------------------------------
- Add read-only helper functions to access individual fields by reference.
- Add a mutable update function to change one field while preserving others.
- Consider emitting an event to record minting activity (advanced).

----------------------------------------
Checklist
----------------------------------------
- Build the package successfully.
- Publish the package and obtain the package ID.
- Call both mint functions and confirm Student objects are created.
- View the objects in the chosen explorer and verify the fields.

----------------------------------------
CLI Reminders
----------------------------------------
- Build from the task directory: `sui move build`.
- Publish with an absolute path: `sui client publish /home/tanta/sui-move-intro-course/task_one`.
- Export your package ID: `export TASK_ONE_PACKAGE_ID=<your package object ID>`.
- Call the demo mint function without additional arguments.
- Call the custom mint function using typed string arguments.

----------------------------------------
Troubleshooting Tips
----------------------------------------
- Ensure only necessary imports are present.
- Confirm abilities are correct for storing objects.
- Verify CLI argument types and quoting.
- Check your client network and gas status.
*/