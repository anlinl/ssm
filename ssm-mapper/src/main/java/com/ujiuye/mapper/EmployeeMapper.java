package com.ujiuye.mapper;

import com.ujiuye.pojo.Employee;

import java.util.List;

public interface EmployeeMapper {
    public List<Employee> queryByAll();

    void add(Employee employee);

    void del(Integer eid);

    Employee queryById(Integer eid);

    void queryBack(Employee employee);
}
