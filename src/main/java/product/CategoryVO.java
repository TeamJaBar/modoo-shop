package product;

public class CategoryVO {
	private int cateNum; // 카테고리번호(PK)
	private String cateL; // 대분류
	private String cateM; // 중분류

	public int getCateNum() {
		return cateNum;
	}

	public void setCateNum(int cateNum) {
		this.cateNum = cateNum;
	}

	public String getCateL() {
		return cateL;
	}

	public void setCateL(String cateL) {
		this.cateL = cateL;
	}

	public String getCateM() {
		return cateM;
	}

	public void setCateM(String cateM) {
		this.cateM = cateM;
	}

}
