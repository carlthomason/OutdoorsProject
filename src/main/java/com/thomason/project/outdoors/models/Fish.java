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
@Table(name="fishes")
public class Fish {

	// Variables
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Long id;
    
    @NotNull
    @Size(message="Body of water needed to fish")
    private String fishSite;
    
    @NotNull
    @Size(message="please give a location")
    private String city;
    
    @Size(message="many states have same city")
    private String state;
    
    @NotNull
    @Size(message="Best guess and species required")
    private String speciespopulation;
    
	@Size(message="Show us what ya got")
    private String personalbest;
    
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
            name = "fish_messages", 
            joinColumns = @JoinColumn(name = "fish_id"), 
            inverseJoinColumns = @JoinColumn(name = "user_id")
        ) 
    private List<User> userm;

	public Fish() {	
	}

	public Fish(@NotNull @Size(message = "Body of water needed to fish") String fishSite,
		@NotNull @Size(message = "please give a location") String city,
		@Size(message = "many states have same city") String state,
		@NotNull @Size(message = "Best guess and species required") String speciespopulation,
		@Size(message = "Show us what ya got") String personalbest, User user, List<User> userm) {

	this.fishSite = fishSite;
	this.city = city;
	this.state = state;
	this.speciespopulation = speciespopulation;
	this.personalbest = personalbest;
	this.user = user;
	this.userm = userm;
}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFishSite() {
		return fishSite;
	}

	public void setFishSite(String fishSite) {
		this.fishSite = fishSite;
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

	public String getSpeciespopulation() {
		return speciespopulation;
	}

	public void setSpeciespopulation(String speciespopulation) {
		this.speciespopulation = speciespopulation;
	}

	public String getPersonalbest() {
		return personalbest;
	}

	public void setPersonalbest(String personalbest) {
		this.personalbest = personalbest;
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
