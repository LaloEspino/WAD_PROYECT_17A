package entity;
// Generated 12-jun-2017 20:21:35 by Hibernate Tools 4.3.1



/**
 * Chart generated by hbm2java
 */
public class Chart  implements java.io.Serializable {


     private Integer idC;
     private String name;
     private Integer x1;
     private Integer y1;
     private Integer x2;
     private Integer y2;

    public Chart() {
    }

    public Chart(String name, Integer x1, Integer y1, Integer x2, Integer y2) {
       this.name = name;
       this.x1 = x1;
       this.y1 = y1;
       this.x2 = x2;
       this.y2 = y2;
    }
   
    public Integer getIdC() {
        return this.idC;
    }
    
    public void setIdC(Integer idC) {
        this.idC = idC;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public Integer getX1() {
        return this.x1;
    }
    
    public void setX1(Integer x1) {
        this.x1 = x1;
    }
    public Integer getY1() {
        return this.y1;
    }
    
    public void setY1(Integer y1) {
        this.y1 = y1;
    }
    public Integer getX2() {
        return this.x2;
    }
    
    public void setX2(Integer x2) {
        this.x2 = x2;
    }
    public Integer getY2() {
        return this.y2;
    }
    
    public void setY2(Integer y2) {
        this.y2 = y2;
    }




}


