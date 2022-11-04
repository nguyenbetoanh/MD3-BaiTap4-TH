SELECT Address, COUNT(StudentId) AS 'Số lượng học viên' FROM Student
GROUP BY Address;
SELECT * FROM Mark;
SELECT * FROM Student;
-- Tính điểm trung bình các môn học của mỗi học viên bằng cách sử dụng hàm AVG
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId GROUP BY S.StudentId, S.StudentName;
-- Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) > 15; 
--  Hiển thị thông tin học viên có điểm trung bình lớn nhất. 
SELECT S.StudentId,S.StudentName, AVG(Mark) as maxAvg
FROM Student S join Mark M on S.StudentId = M.StudentId 
GROUP BY S.StudentId, S.StudentName
having avg(mark)> all(select avg(mark) from mark GROUP BY S.StudentId)
