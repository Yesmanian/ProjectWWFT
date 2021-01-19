package com.wwft.service.domain;

public class ImageAndLike {
	
	private int imageAndLikeNo;
	private String likeWriter;
	private int postNo;
	private String likeState;
	private int likeTotalCount;
	private String imageName;
	private String imageAndLikeState;

	public ImageAndLike() {
		}

	public int getImageAndLikeNo() {
		return imageAndLikeNo;
	}

	public void setImageAndLikeNo(int imageAndLikeNo) {
		this.imageAndLikeNo = imageAndLikeNo;
	}

	public String getLikeWriter() {
		return likeWriter;
	}

	public void setLikeWriter(String likeWriter) {
		this.likeWriter = likeWriter;
	}

	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public String getLikeState() {
		return likeState;
	}

	public void setLikeState(String likeState) {
		this.likeState = likeState;
	}

	public int getLikeTotalCount() {
		return likeTotalCount;
	}

	public void setLikeTotalCount(int likeTotalCount) {
		this.likeTotalCount = likeTotalCount;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public String getImageAndLikeState() {
		return imageAndLikeState;
	}

	public void setImageAndLikeState(String imageAndLikeState) {
		this.imageAndLikeState = imageAndLikeState;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ImageAndLike [imageAndLikeNo=");
		builder.append(imageAndLikeNo);
		builder.append(", likeWriter=");
		builder.append(likeWriter);
		builder.append(", postNo=");
		builder.append(postNo);
		builder.append(", likeState=");
		builder.append(likeState);
		builder.append(", likeTotalCount=");
		builder.append(likeTotalCount);
		builder.append(", imageName=");
		builder.append(imageName);
		builder.append(", imageAndLikeState=");
		builder.append(imageAndLikeState);
		builder.append("]");
		return builder.toString();
	}
	
	

}
