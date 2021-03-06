package com.app.OnlineFIRsystem.admin;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Admin {

    @Id
    private long id;
    private String name;
    private String role;
    
    
	public Admin() {
		super();
		
	}


	public Admin(long id, String name, String role) {
		super();
		this.id = id;
		this.name = name;
		this.role = role;
	}


	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}

}