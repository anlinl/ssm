package com.ujiuye.service;

import com.ujiuye.mapper.EmployeeMapper;
import com.ujiuye.pojo.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeService {
    @Autowired
    private EmployeeMapper employeeMapper;

    public List<Employee> queryByAll(){
        List<Employee> employees = employeeMapper.queryByAll();
        return employees;
    }

    public void add(Employee employee) {
        employeeMapper.add(employee);
    }

    public void del(Integer eid) {
        employeeMapper.del(eid);
    }

    public Employee queryById(Integer eid) {
        return employeeMapper.queryById(eid);
    }

    public void queryBack(Employee employee) {
        employeeMapper.queryBack(employee);
    }
}
