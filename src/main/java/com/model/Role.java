package com.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Role implements Serializable {

	private static final long serialVersionUID = 4657462015039726030L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int roleid;
	private String role;
	
	@OneToOne
	@JoinColumn(name = "firstname")
	private NewUser ns;

	
	public int getRoleid() {
		return roleid;
	}

	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public NewUser getNs() {
		return ns;
	}

	public void setNs(NewUser ns) {
		this.ns = ns;
	}

}
