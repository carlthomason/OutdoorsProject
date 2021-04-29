package com.thomason.project.outdoors.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="hunts")
public class Hunt {

	// Variables
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Long id;
    
    @Size(min=2, message="Camp name must be present and at least 2 characters")
    private String huntSite;
    
    @NotNull
    @Size(message="please give a location")
    private String city;
    
    @Size(message="many states have same city")
    private String state;
    
    @NotNull
    @Size(message="Best guess and species required")
    private String species_population;
    
    @Size(message="Show us what ya got")
    private String personal_best;

    @Column(updatable=false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createdAt;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date updatedAt;   
    
	@PrePersist
	protected void onCreate(){
	    this.createdAt = new Date();
	}
	
	@PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
	
	//Relationships
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;
    
    @ManyToMany
    @JoinTable(
            name = "hunt_messages", 
            joinColumns = @JoinColumn(name = "hunt_id"), 
            inverseJoinColumns = @JoinColumn(name = "user_id")
        ) 
    private List<User> userm;
    
    
    public Hunt() {	
    }

	public Hunt(@Size(min = 2, message = "Camp name must be present and at least 2 characters") String huntSite,
			@NotNull @Size(message = "please give a location") String city,
			@Size(message = "many states have same city") String state,
			@NotNull @Size(message = "Best guess and species required") String species_population,
			@Size(message = "Show us what ya got") String personal_best, User user, List<User> userm) {
		this.huntSite = huntSite;
		this.city = city;
		this.state = state;
		this.species_population = species_population;
		this.personal_best = personal_best;
		this.user = user;
		this.userm = userm;
	}

	//Getters and Setters
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getHuntSite() {
		return huntSite;
	}

	public void setHuntSite(String huntSite) {
		this.huntSite = huntSite;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getSpecies_population() {
		return species_population;
	}

	public void setSpecies_population(String species_population) {
		this.species_population = species_population;
	}

	public String getPersonal_best() {
		return personal_best;
	}

	public void setPersonal_best(String personal_best) {
		this.personal_best = personal_best;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUserm() {
		return userm;
	}

	public void setUserm(List<User> userm) {
		this.userm = userm;
	}

}
