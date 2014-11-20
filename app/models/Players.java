package models;

import java.util.*;
import javax.persistence.*;

import play.db.ebean.*;
import play.data.format.*;
import play.data.validation.*;

@Entity
@Table(name = "Players")
public class Players extends Model {
	@Id
	@Column(name = "id")
	public int id;

	@Column(name = "first_name")
	public String first_name;

	@Column(name = "last_name")
	public String last_name;

	@Column(name = "email")
	public String email;

	@Column(name = "telephone")
	public String telephone;

	@OneToOne(cascade = CascadeType.ALL, mappedBy = "myPlayer", fetch = FetchType.EAGER)
	public Brass myBrass;

	@OneToOne(cascade = CascadeType.ALL, mappedBy = "myPlayer", fetch = FetchType.EAGER)
	public Woodwind myWoodwind;

	@OneToOne(cascade = CascadeType.ALL, mappedBy = "myPlayer", fetch = FetchType.EAGER)
	public Keyboard myKeyboard;

	@OneToOne(cascade = CascadeType.ALL, mappedBy = "myPlayer", fetch = FetchType.EAGER)
	public Percussion myPercussion;

	@OneToOne(cascade = CascadeType.ALL, mappedBy = "myPlayer", fetch = FetchType.EAGER)
	public SymphonicString mySymphonicString;

	@ManyToOne
    @JoinColumn(name = "orchestra_id", referencedColumnName = "id")
	public Orchestra myOrchestra;

	public static Model.Finder<Integer,Players> find = new Finder(
		Integer.class, Players.class
	);

	//CRUD operations
	public static List<Players> all() {
		return find.all();
	}

	public static void create(Players players) {
		players.save();
	}

	public static void update(int id) {
		find.ref(id).update();
	}

	public static void delete(int id) {
		find.ref(id).delete();
	}

	//getters for display
	public int getId() {
		return this.id;
	}

	public String getFirst() {
		return this.first_name;
	}

	public String getLast() {
		return this.last_name;
	}

	public String getEmail() {
		return this.email;
	}

	public String getPhone() {
		return this.telephone;
	}

	public Orchestra getOrchestra() {
		return this.myOrchestra;
	}

	public void setOrchestra(int orchestra_id) {
		this.myOrchestra = Orchestra.find.byId(orchestra_id);
	}

	public void setId(int id) {
		this.id = id;
	}

	public Players(String first_name, String last_name) {
		this.first_name = first_name;
		this.last_name = last_name;
	}

}