package org.forms_in_spring_mvc.controller;

import org.forms_in_spring_mvc.domain.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
public class EmployeeController {

    Map<Long, Employee> employeeMap = new HashMap<>();

    @RequestMapping(value = "/employee", method = RequestMethod.GET)
    public ModelAndView showForm() {
        return new ModelAndView("employeeHome", "employee", new Employee());
    }

    @RequestMapping(value = "/employee/{Id}", method = RequestMethod.GET)
    public @ResponseBody
    Employee getEmployeeById(@PathVariable final long Id) {
        return employeeMap.get(Id);
    }

    @RequestMapping(value = "/getEmployee", method = RequestMethod.GET)
    public String getEmployee(Model model) {
        List<Employee> employeeList = employeeMap.values()
                .stream()
                .collect(Collectors.toList());
        model.addAttribute("employeeList", employeeList);
        return "employeeAllView";
    }

    @RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
    public String submit(@Valid @ModelAttribute("employee") Employee employee, BindingResult result, ModelMap model) {
        if (result.hasErrors() || employeeMap.containsKey(employee.getId())) {
            if (employeeMap.containsKey(employee.getId())) {
                model.addAttribute("message", "ID already exists!");
            }
            model.addAttribute("name", employee.getName());
            model.addAttribute("contactNumber", employee.getContactNumber());
            return "employeeHome";
        }
        model.addAttribute("name", employee.getName());
        model.addAttribute("contactNumber", employee.getContactNumber());
        model.addAttribute("id", employee.getId());
        employeeMap.put(employee.getId(), employee);
        return "employeeView";
    }

}