/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

/**
 *
 * @author macbookair
 */
@Entity
@DiscriminatorValue(value = "Student")
public class Student extends Person {

    /* private String type;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }*/

    public Student() {
        super();
    }

    public Student(String name, String address, String phone, String email) {
        super(name, address, phone, email);
    }

    @Override
    public String toString() {//overriding the toString() method  
        return super.toString();
    }

}
