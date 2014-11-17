package models;

import java.util.*;
import javax.persistence.*;

import play.db.ebean.*;
import play.data.format.*;
import play.data.validation.*;

@Entity
@Table(name = "Percussion")
public class Percussion extends Model {
	@Id
	@Column(name = "id")
	private int id;

	@Column(name = "instrument")
	private String instrument;

	@Column(name = "type")
	private String type;

	@Column(name = "player_id")
	private int player_id;

    @OneToOne
    @JoinColumn(name = "player_id", referencedColumnName = "id")
	private Players myPlayer;

	public static Finder<Integer,Percussion> find = new Finder(
		Integer.class, Percussion.class
	);

	//CRUD operations
	public static List<Percussion> all() {
		return find.all();
	}

	public static void create(Percussion percussion) {
		percussion.save();
	}

	public static void update(int id) {
		find.ref(id).update();
	}

	public static void delete(int id) {
		find.ref(id).delete();
	}

	//getters
	public int getId() {
		return this.id;
	}

	public String getInstrument() {
		return this.instrument;
	}

	public String getType() {
		return this.type;
	}

	public int getPlayer() {
		return this.player_id;
	}

}