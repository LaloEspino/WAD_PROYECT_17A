package Student;

import com.opensymphony.xwork2.ActionSupport;
import entity.Chart;
import entity.HibernateUtil;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class ViewChart extends ActionSupport {
    
    public Integer id;
    
    private Chart chart;
    private String name;
    private Integer x1;
    private Integer y1;
    private Integer x2;
    private Integer y2;
    private Integer class_;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getX1() {
        return x1;
    }

    public void setX1(Integer x1) {
        this.x1 = x1;
    }

    public Integer getY1() {
        return y1;
    }

    public void setY1(Integer y1) {
        this.y1 = y1;
    }

    public Integer getX2() {
        return x2;
    }

    public void setX2(Integer x2) {
        this.x2 = x2;
    }

    public Integer getY2() {
        return y2;
    }

    public void setY2(Integer y2) {
        this.y2 = y2;
    }

    public Integer getClass_() {
        return class_;
    }

    public void setClass_(Integer class_) {
        this.class_ = class_;
    }

    public Chart getChart() {
        return chart;
    }

    public void setChart(Chart chart) {
        this.chart = chart;
    }

    
    
    public ViewChart() {
    }
    
    public String execute() throws Exception {

        Session hibernateSession;
        hibernateSession = HibernateUtil.getSessionFactory().openSession();
        Transaction t = hibernateSession.beginTransaction();
        chart = (Chart)hibernateSession.load(Chart.class, id);
        
        System.out.println(chart.getName());
        chart.getClass_();
        chart.getName();
        chart.getX1();
        chart.getX2();
        chart.getY1();
        chart.getY2();
        
        
        //hibernateSession.delete(user);
        t.commit();
        
        return SUCCESS;

    }
    
}
