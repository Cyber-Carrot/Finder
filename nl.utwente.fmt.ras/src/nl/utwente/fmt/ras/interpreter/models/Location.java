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

	public void addCards(List<Card> cards) {
		this.cards.addAll(cards);
	}
	
	public void shuffle() {
		Collections.shuffle(this.cards);
	}

	public void addCard(Card c) {
		this.cards.add(c);
	}

	public boolean hasCards() {
		return this.cards != null && !this.cards.isEmpty();
	}

	public boolean hasCard() {
		return false;
	}

	public List<Card> getCards() {
		return cards;
	}

	public Card takeCard() {
		return cards.get(cards.size() - 1);
	}

	publi