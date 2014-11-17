package models;

import java.util.*;
import javax.persistence.*;

import play.db.ebean.*;
import play.data.format.*;
import play.data.validation.*;

import javax.persistence.*;

@Entity
@Table(name = "Players")
public class Players extends Model {
	@Id
	@Column(name = "id")
	private int id;

	@Column(name = "first_name")
	private String first_name;

	@Column(name = "last_name")
	private String last_name;

	@Column(name = "email")
	private String email;

	@Column(name = "telephone")
	private String telephone;

	@OneToOne(cascade = CascadeType.ALL, mappedBy = "myPlayer", fetch = FetchType.EAGER)
	private Brass myBrass;

	@OneToOne(cascade = CascadeType.ALL, mappedBy = "myPlayer", fetch = FetchType.EAGER)
	private Woodwind myWoodwind;

	@OneToOne(cascade = CascadeType.ALL, mappedBy = "myPlayer", fetch = FetchType.EAGER)
	private Keyboard myKeyboard;

	@OneToOne(cascade = CascadeType.ALL, mappedBy = "myPlayer", fetch = FetchType.EAGER)
	private Percussion myPercussion;

	@OneToOne(cascade = CascadeType.ALL, mappedBy = "myPlayer", fetch = FetchType.EAGER)
	private SymphonicString mySymphonicString;

	@Column(name = "orchestra_id")
	private int orchestra_id;

	@ManyToOne
    @JoinColumn(name = "orchestra_id", referencedColumnName = "id")
	private Players myPlayer;

	public static Finder<Integer,Players> find = new Finder(
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

	public int getOrchestra() {
		return this.orchestra_id;
	}
}