package models;

import java.util.*;
import javax.persistence.*;

import play.db.ebean.*;
import play.data.format.*;
import play.data.validation.*;

@Entity
@Table(name = "Brass")
public class Brass extends Model {
	@Id
	@Column(name = "id")
	public int id;

	@Column(name = "instrument")
	public String instrument;

	@Column(name = "instrument_key")
	public String instrument_key;

	@Column(name = "clef")
	public String clef;

	@Column(name = "seat")
	public int seat;

    @OneToOne
    @JoinColumn(name = "player_id", referencedColumnName = "id")
	public Players myPlayer;

	public static Model.Finder<Integer,Brass> find = new Finder(
		Integer.class, Brass.class
	);

	//CRUD operations
	public static List<Brass> all() {
		return find.all();
	}

	public static void create(Brass brass) {
		brass.save();
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

	public String getKey() {
		return this.instrument_key;
	}

	public String getClef() {
		return this.clef;
	}

	public int getSeat() {
		return this.seat;
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