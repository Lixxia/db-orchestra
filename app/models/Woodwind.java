package models;

import java.util.*;
import javax.persistence.*;

import play.db.ebean.*;
import play.data.format.*;
import play.data.validation.*;

@Entity
@Table(name = "Woodwind")
public class Woodwind extends Model {
	@Id
	@Column(name = "id")
	private int id;

	@Column(name = "instrument")
	private String instrument;

	@Column(name = "clef")
	private String clef;

	@Column(name = "player_id")
	private int player_id;

	@JsonIgnore
    @OneToOne
    @JoinColumn(name = "player_id", referencedColumnName = "id")
	private Player myPlayer;

}