
SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_empid emp.empno%TYPE;
  3  v_ename emp.ename%TYPE;
  4  cursor emp_cursor
  5  IS
  6  select empno , ename from emp;
  7  Begin
  8  open emp_cursor;
  9  for i in 1..10
 10  loop
 11  fetch emp_cursor into v_empid, v_ename ;
 12  DBMS_OUTPUT.PUT_LINE('EMPID' || v_empid || 'ENAME' || v_ename);
 13  END LOOP;
 14  CLOSE emp_cursor;
 15* END;
SQL> /

PL/SQL procedure successfully completed.
