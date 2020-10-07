create or replace view result_view as 
select 
	concat(a.student_id,GET_CLASS_CODE(a.class_id),GET_SEMESTER_CODE(a.semester_id),GET_DEPARTMENT_CODE(a.department_id),a.year_name) as result_id,
	a.student_id,
    a.class_id,
    a.semester_id,
    a.department_id,
    a.year_name,
    a.auth_code,
    GET_CLASS_CODE(a.class_id) as class_code,
    GET_CLASS_NAME(a.class_id) AS class_name,
    GET_SEMESTER_CODE(a.semester_id) as sem_code,
    GET_DEPARTMENT_CODE(a.department_id) as department_code,
    CALCULATE_GPA(a.student_id,a.class_id,a.semester_id,a.department_id,a.year_name) as gpa,
    CALCULATE_GRADE(a.student_id,a.class_id,a.semester_id,a.department_id,a.year_name) as grade,
    CLACULATE_STATUS(a.student_id,a.class_id,a.semester_id,a.department_id,a.year_name) as status,
    b.student_name,
    b.father_name,
    b.mother_name
from studentregistrations a
left join admissions b on a.student_id=b.student_id