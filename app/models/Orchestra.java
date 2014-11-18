package models;

import java.util.*;
import javax.persistence.*;

import play.db.ebean.*;
import play.data.format.*;
import play.data.validation.*;

@Entity
@Table(name = "Orchestra")
public class Orchestra extends Model {
	@Id
	@Column(name = "id")
	public int id;

	@Column(name= "name")
	public String name; 

	@Column(name = "type")
	public String type;

	@Column(name = "num_players")
	public int num_players;

	@Column(name = "style")
	public String style;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "myPlayer", fetch = FetchType.EAGER)
	public Players myPlayer;

	public static Finder<Integer,Orchestra> find = new Finder(
		Integer.class, Orchestra.class
	);

	//CRUD operations
	public static List<Orchestra> all() {
		return find.all();
	}

	public static void create(Orchestra orchestra) {
		orchestra.save();
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

	public String getName() {
		return this.name;
	}

	public String getType() {
		return this.type;
	}

	public Integer getNum() {
		return this.num_players;
	}

	public String getStyle() {
		return this.style;
	}
}