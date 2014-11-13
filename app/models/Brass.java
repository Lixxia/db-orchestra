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
	private int id;

	@Column(name = "instrument")
	private String instrument;

	@Column(name = "instrument_key")
	private String instrument_key;

	@Column(name = "clef")
	private String clef;

	@Column(name = "seat")
	private int seat;

	@Column(name = "player_id")
	private int player_id;

    @OneToOne
    @JoinColumn(name = "player_id", referencedColumnName = "id")
	private Players myPlayer;


	public static Finder<int,Brass> find = new Finder(
		int.class, Brass.class
	);
	//CRUD operations
	public static List<Brass> all() {
		return find.all();
	}

	public static void create(Brass brass) {
		brass.save();
	}

	public static void delete(int id) {
		find.ref(id).delete();
	}
}