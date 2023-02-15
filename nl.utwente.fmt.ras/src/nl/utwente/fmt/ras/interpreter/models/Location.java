package nl.utwente.fmt.ras.interpreter.models;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import nl.utwente.fmt.ras.ras.Card;
import nl.utwente.fmt.ras.ras.CardLocation;
import nl.utwente.fmt.ras.ras.LocationVisibility;

public class Location {

	private CardLocation loc;
	private List<Card> cards = new ArrayList<Card>();

	public Location(CardLocation loc) {
		this.loc = loc;
	}

	public CardLocation getLoc() {
		return loc;
	}

	public void setLoc(CardLocation loc) {
		this.loc = loc;
	}

	public vo