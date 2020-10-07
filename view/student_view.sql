CREATE OR REPLACE VIEW student_view AS
SELECT
  a.student_id,
  a.serial_no,
  a.student_name,
  a.father_name,
  a.mother_name,
  a.mobile_number,
  a.nid,
  a.dateofbirth,
  a.admission_date,
  a.student_photo,
  GET_CURRENT_CLASS(a.student_id) AS class_name,
  GET_CURRENT_CLASSID(a.student_id) AS class_id,
  GET_CURRENT_DEPARTMENT(a.student_id) AS department_name,
  GET_CURRENT_SEMESTER(a.student_id) AS semester_name,
  GET_CURRENT_SEMESTERID(a.student_id) AS semester_id,
  GET_CURRENT_REGYEAR(a.student_id) AS registration_year,
  GET_CURRENT_REGDATE (a.student_id) AS registration_date,
  A.AUTH_CODE
FROM
  admissions a