#[allow(lint(self_transfer))]
module task_one::task_one;

use std::string::String;

use sui::event::emit;

public struct Student has key, store {
    id: UID,
    name: String,
    department: String,
    faculty: String,
}

public struct StudentCreatedEvent has copy, drop {
    name: String,
    department: String,
    faculty: String,
}

public struct AdminCap has key { }

fun init(ctx: &mut TxContext) {
    transfer::public_transfer(AdminCap { }, ctx.sender());          
}
public fun mint_demo(ctx: &mut TxContext) {
    let student = Student {
        id: object::new(ctx),
        name: b"Alice".to_string(),
        department: b"Computer Science".to_string(),
        faculty: b"Engineering".to_string(),
    };

    let student_event = StudentCreatedEvent {
        name: student.name,
        department: student.department,
        faculty: student.faculty,
    };

    emit(student_event);

    transfer::public_transfer(student, ctx.sender());

}

public fun mint_with_values(name: String, department: String, faculty: String, ctx: &mut TxContext) {
    let student = Student {
        id: object::new(ctx),
        name,
        department,
        faculty,
    };

    emit(StudentCreatedEvent {
        name: student.name,
        department: student.department,
        faculty: student.faculty,
    });

    transfer::public_transfer(student, ctx.sender());
}

public fun get_student_name(student: &Student): String {
    student.name
}

public fun get_student_department(student: &Student): String {
    student.department
}

public fun get_student_faculty(student: &Student): String {
    student.faculty
}

// Entry wrapper so the CLI can call and return the student's name
public entry fun read_student_name(student: &Student, ctx: &mut TxContext): String {
    get_student_name(student)
}