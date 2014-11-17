package models;

import java.util.*;
import javax.persistence.*;

import play.db.ebean.*;
import play.data.format.*;
import play.data.validation.*;

@Entity
@Table(name = "Keyboard")
public class Keyboard extends Model {
	@Id
	@Column(name = "id")
	private int id;

	@Column(name = "instrument")
	private String instrument;

	@Column(name = "clef")
	private String clef;

	@Column(name = "player_id")
	private int player_id;

    @OneToOne
    @JoinColumn(name = "player_id", referencedColumnName = "id")
	private Players myPlayer;

	public static Finder<Integer,Keyboard> find = new Finder(
		Integer.class, Keyboard.class
	);

	//CRUD operations
	public static List<Keyboard> all() {
		return find.all();
	}

	public static void create(Keyboard keyboard) {
		keyboard.save();
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

	public String getClef() {
		return this.clef;
	}

	public int getPlayer() {
		return this.player_id;
	}
}