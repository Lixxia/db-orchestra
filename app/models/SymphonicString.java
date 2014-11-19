package models;

import java.util.*;
import javax.persistence.*;

import play.db.ebean.*;
import play.data.format.*;
import play.data.validation.*;

@Entity
@Table(name = "SymphonicString")
public class SymphonicString extends Model {
	@Id
	@Column(name = "id")
	public int id;

	@Column(name = "instrument")
	public String instrument;

	@Column(name = "section")
	public String section;

	@Column(name = "seat")
	public int seat;

	@Column(name = "clef")
	public String clef;

	@Column(name = "player_id")
	public int player_id;

    @OneToOne
    @JoinColumn(name = "player_id", referencedColumnName = "id")
	public Players myPlayer;

	public static Finder<Integer,SymphonicString> find = new Finder(
		Integer.class, SymphonicString.class
	);

	//CRUD operations
	public static List<SymphonicString> all() {
		return find.all();
	}

	public static void create(SymphonicString symphonicstring) {
		symphonicstring.save();
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

	public String getSection() {
		return this.section;
	}

	public int getSeat() {
		return this.seat;
	}
	public String getClef() {
		return this.clef;
	}

	public int getPlayer() {
		return this.player_id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
