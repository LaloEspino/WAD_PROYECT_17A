package Profesor;

import com.opensymphony.xwork2.ActionSupport;
import entity.Chart;
import entity.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Miguel
 */
public class InsertChart extends ActionSupport {
    
    private String name;
    private Integer x1;
    private Integer y1;
    private Integer x2;
    private Integer y2;
    private Integer class_;

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
    
    
    
    public InsertChart() {
    }
    
    public String execute() throws Exception {
        
        Session hibernateSession;
        hibernateSession = HibernateUtil.getSessionFactory().openSession();
        Transaction t = hibernateSession.beginTransaction();
        
        Chart chart = new Chart();
        chart.setName(name);
        chart.setClass_(class_);
        chart.setX1(x1);
        chart.setY1(y1);
        chart.setX2(x2);
        chart.setY2(y2);
        
        hibernateSession.save(chart);
        t.commit();
        return SUCCESS;
    }
    
}
