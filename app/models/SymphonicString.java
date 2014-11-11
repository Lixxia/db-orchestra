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
	private int id;

	@Column(name = "instrument")
	private String instrument;

	@Column(name = "section")
	private String section;

	@Column(name = "seat")
	private int seat;

	@Column(name = "clef")
	private String clef;

	@Column(name = "player_int")
	private int player_int;
}
