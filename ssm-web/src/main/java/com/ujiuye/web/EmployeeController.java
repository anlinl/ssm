package com.ujiuye.web;

import com.ujiuye.pojo.Employee;
import com.ujiuye.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
public class EmployeeController {
    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("/updateBack")
    public String queryBack(Employee employee){
        System.out.println(employee);
        employeeService.queryBack(employee);
        return "redirect:/queryAll";
    }

    @RequestMapping(value = "/update/{eid}")
    public String queryById(@PathVariable Integer eid, Model model){
        Employee employee = employeeService.queryById(eid);
        model.addAttribute("employee",employee);
        return "update";
    }

    @RequestMapping(value = "/del/{eid}",method = RequestMethod.DELETE)
    public String del(@PathVariable Integer eid){
        employeeService.del(eid);
        return "redirect:/queryAll";
    }

    @RequestMapping("/queryByAdd")
    public String add(Employee employee){
        employeeService.add(employee);
        return "redirect:/queryAll";
    }



    @RequestMapping("/queryAll")
    public ModelAndView queryAll(){
        ModelAndView mv = new ModelAndView("success");
        List<Employee> employees = employeeService.queryByAll();
        mv.addObject("employee",employees);
        return mv;
    }
}
