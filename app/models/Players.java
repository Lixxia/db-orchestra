package models;

import java.util.*;
import javax.persistence.*;

import play.db.ebean.*;
import play.data.format.*;
import play.data.validation.*;

@Entity
@Table(name = "Players")
public class Players extends Model {
	@Id
	@Column(name = "id")
	private int id;

	@Column(name = "first_name")
	private String first_name;

	@Column(name = "last_name")
	private String last_name;

	@Column(name = "email")
	private String email;

	@Column(name = "telephone")
	private String telephone;

	
	@OneToOne(cascade = CascadeType.ALL, mappedBy = "Players", fetch = FetchType.EAGER)
	private Brass myBrass;

	@Column(name = "orchestra_id")
	private int orchestra_id;
}