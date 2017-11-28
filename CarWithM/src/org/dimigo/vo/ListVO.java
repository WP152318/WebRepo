package org.dimigo.vo;

public class ListVO {
	private String title;
	private String text;
	private String date;
	private String destination;

	public ListVO(String title, String text, String date, String destination) {
		super();
		this.title = title;
		this.text = text;
		this.date = date;
		this.destination = destination;

	}

	public ListVO() {
		// TODO Auto-generated constructor stub
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	@Override
	public String toString() {
		return "ListVO [title=" + title + ", text=" + text + ", date=" + date + ", destination=" + destination + "]";
	}

}
