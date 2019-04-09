package bean;

public class contact {
    
    private String name;
    private int phone;
    private String email;
    private String msj;
    private int id;
    
    public contact() {
    }

    public contact(String name, int phone, String email, String msj, int id) {
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.msj = msj;
        this.id = id;
    }

        
    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
      
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMsj() {
        return msj;
    }

    public void setMsj(String msj) {
        this.msj = msj;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

}
