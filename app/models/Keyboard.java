package models;

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
}