package kr.hkit.slimmall.admin.mapper;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {

	private int idx;
	private String name;
	private String description;
	private int price;
	private int qty;
	private String imageName;
	private int categoryIdx;
	private MultipartFile imageFile;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public int getCategoryIdx() {
		return categoryIdx;
	}
	public void setCategoryIdx(int categoryIdx) {
		this.categoryIdx = categoryIdx;
	}
	public MultipartFile getImageFile() {
		return imageFile;
	}
	public void setImageFile(MultipartFile imageFile) {
		this.imageFile = imageFile;
	}
		
}
