package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Book")
public class Book {
	private String iD_Book;
	@Id
	@Column(name = "ID_Book")
	public String getiD_Book() {
		return iD_Book;
	}
	public void setiD_Book(String iD_Book) {
		this.iD_Book = iD_Book;
	}
	
	@Column(name = "Title")
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	@Column(name = "ID_Author")
	public String getiD_Author() {
		return iD_Author;
	}
	public void setiD_Author(String iD_Author) {
		this.iD_Author = iD_Author;
	}
	
	@Column(name = "Date_Published")
	public String getDate_Published() {
		return date_Published;
	}
	public void setDate_Published(String date_Published) {
		this.date_Published = date_Published;
	}
	
	@Column(name = "Language")
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	
	@Column(name = "Category")
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	@Column(name = "Rating")
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	
	@Column(name = "View")
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	
	@Column(name = "NumberOfChap")
	public int getNumberOfChap() {
		return numberOfChap;
	}
	public void setNumberOfChap(int numberOfChap) {
		this.numberOfChap = numberOfChap;
	}
	
	@Column(name = "Price")
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	private String title;
	private String iD_Author;
	private String date_Published;
	private String language;
	private String category;
	private int rating;
	private int view;
	private int numberOfChap;
	private float price;
}
