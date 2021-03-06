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
	public int id;

	@Column(name = "instrument")
	public String instrument;

	@Column(name = "clef")
	public String clef;

    @OneToOne
    @JoinColumn(name = "player_id", referencedColumnName = "id")
	public Players myPlayer;

	public static Model.Finder<Integer,Keyboard> find = new Finder(
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

	public Players getPlayer() {
		return this.myPlayer;
	}

	public void setPlayer(int player_id) {
		this.myPlayer = Players.find.byId(player_id);
	}

	public void setId(int id) {
		this.id = id;
	}
}