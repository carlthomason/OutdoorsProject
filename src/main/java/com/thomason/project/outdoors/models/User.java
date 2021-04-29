package com.thomason.project.outdoors.models;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="users")
public class User {
	// Variables
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Long id;
    
    @Size(min=2, message="First name must be present and at least 2 characters")
    private String firstName;
    
    @Size(min=2, message="Last name must be present and at least 2 characters")
    private String lastName;
    
    @Email(message="Email must be present and valid format")
    private String email;
    
    @Size(min=8, message="Password must be greater than 8 characters")
    private String password;
    
    @Transient
    private String passwordConfirmation;
    
    @Column(updatable=false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createdAt;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date updatedAt;
    
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    private List<Camp> camp;
    
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    private List<Fish> fish;
    
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    private List<Hunt> hunt;
    
    
    @OneToOne(mappedBy="user", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    private CampBackPack campBackPack;
    
    @OneToOne(mappedBy="user", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    private HuntBackPack huntBackPack;
    
    @OneToOne(mappedBy="user", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    private FishTacklebox fishTacklbox;
    
    // Constructors
    public User() {
    }

	public User(@Size(min = 2, message = "First name must be present and at least 2 characters") String firstName,
			@Size(min = 2, message = "Last name must be present and at least 2 characters") String lastName,
			@Email(message = "Email must be present and valid format") String email,
			@Size(min = 8, message = "Password must be greater than 8 characters") String password, List<Camp> camp,
			List<Fish> fish, List<Hunt> hunt, CampBackPack campBackPack, HuntBackPack huntBackPack, FishTacklebox fishTacklbox) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.camp = camp;
		this.fish = fish;
		this.hunt = hunt;
		this.campBackPack = campBackPack;
		this.huntBackPack = huntBackPack;
		this.fishTacklbox = fishTacklbox;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPasswordConfirmation() {
		return passwordConfirmation;
	}

	public void setPasswordConfirmation(String passwordConfirmation) {
		this.passwordConfirmation = passwordConfirmation;
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

	public List<Camp> getCamp() {
		return camp;
	}

	public void setCamp(List<Camp> camp) {
		this.camp = camp;
	}

	public List<Fish> getFish() {
		return fish;
	}

	public void setFish(List<Fish> fish) {
		this.fish = fish;
	}

	public List<Hunt> getHunt() {
		return hunt;
	}

	public void setHunt(List<Hunt> hunt) {
		this.hunt = hunt;
	}

	public CampBackPack getCampBackPack() {
		return campBackPack;
	}

	public void setCampBackPack(CampBackPack campBackPack) {
		this.campBackPack = campBackPack;
	}

	public HuntBackPack getHuntBackPack() {
		return huntBackPack;
	}

	public void setHuntBackPack(HuntBackPack huntBackPack) {
		this.huntBackPack = huntBackPack;
	}

	public FishTacklebox getFishTacklbox() {
		return fishTacklbox;
	}

	public void setFishTacklbox(FishTacklebox fishTacklbox) {
		this.fishTacklbox = fishTacklbox;
	}
    
}
