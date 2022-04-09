package uz.pdp.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import org.springframework.web.servlet.view.RedirectView;
import uz.pdp.Models.Course;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 *
 */

@Controller
public class CourseController  {

    List<Course> courses = new ArrayList<Course>(Arrays.asList(
            new Course(1,"Math","Offline"),
            new Course(2,"English","Offline"),
            new Course(3,"Java","Online"),
            new Course(4,"DataBase","Online"),
            new Course(5,"Data structures","Online")
    ));


    @RequestMapping(value="/course",method= RequestMethod.GET)
    public String toJsp(Model model){
        model.addAttribute("getCourse",courses);
        return "Course";
    }

    @RequestMapping(value="/addCourse",method= RequestMethod.GET)
    public String getCourse(){
        return "addCourse";
    }


    @RequestMapping(value="/addCourse",method= RequestMethod.POST)
    public RedirectView postCourse(Model model, HttpServletRequest request){

           int num = Integer.parseInt(request.getParameter("number"));
           String name = request.getParameter("name");
           String info = request.getParameter("info");
           courses.add(new Course(num,name,info));
           RedirectView returnView = new RedirectView();
           returnView.setUrl("/course");
         return returnView;
    }

}
