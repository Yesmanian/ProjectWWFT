package com.wwft.service.domain;

public class ImageAndLike {
	
	private int imageAndLikeNo; 		//이미지 호감도 번호
	private String likeWriter;			//호감도 작성자
	private int postNo;					//게시글번호
	private String likeState;			//호감도 여부
	private int likeTotalCount;			//호감도 총개수
	private String originalImageName;	//이미지원본명	
	private String saveImageName;		//저장이미지명
	private String deleteImageState;	//이미지 삭제여부
	private String imageAndLikeState;	//이지미 호감도 구분여부

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
		return originalImageName;
	}

	public void setImageName(String imageName) {
		this.originalImageName = imageName;
	}

	public String getImageAndLikeState() {
		return imageAndLikeState;
	}

	public void setImageAndLikeState(String imageAndLikeState) {
		this.imageAndLikeState = imageAndLikeState;
	}

	public String getOriginalImageName() {
		return originalImageName;
	}

	public void setOriginalImageName(String originalImageName) {
		this.originalImageName = originalImageName;
	}

	public String getSaveImageName() {
		return saveImageName;
	}

	public void setSaveImageName(String saveImageName) {
		this.saveImageName = saveImageName;
	}

	public String getDeleteImageState() {
		return deleteImageState;
	}

	public void setDeleteImageState(String deleteImageState) {
		this.deleteImageState = deleteImageState;
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
		builder.append(", originalImageName=");
		builder.append(originalImageName);
		builder.append(", saveImageName=");
		builder.append(saveImageName);
		builder.append(", deleteImageState=");
		builder.append(deleteImageState);
		builder.append(", imageAndLikeState=");
		builder.append(imageAndLikeState);
		builder.append("]");
		return builder.toString();
	}

	
	
	

}
