package klu.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="dietician")
public class Dietician {
	 @Id
	    @Column(name = "email")
	    private String email; // User's email (Primary Key)

	    @Column(name = "qualification")
	    private String qualification; // User's qualification

	    @Column(name = "contact")
	    private String contact; // User's contact number

	    @Column(name = "age")
	    private int age; // User's age

	    @Column(name = "full_name")
	    private String fullName; // User's full name

	    @Column(name = "experience")
	    private int experience; // User's years of experience

	    @Column(name = "profile_pic")
	    private String profilePic; // URL or path to the profile picture

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getQualification() {
			return qualification;
		}

		public void setQualification(String qualification) {
			this.qualification = qualification;
		}

		public String getContact() {
			return contact;
		}

		public void setContact(String contact) {
			this.contact = contact;
		}

		public int getAge() {
			return age;
		}

		public void setAge(int age) {
			this.age = age;
		}

		public String getFullName() {
			return fullName;
		}

		public void setFullName(String fullName) {
			this.fullName = fullName;
		}

		public int getExperience() {
			return experience;
		}

		public void setExperience(int experience) {
			this.experience = experience;
		}

		public String getProfilePic() {
			return profilePic;
		}

		public void setProfilePic(String profilePic) {
			this.profilePic = profilePic;
		}

}
