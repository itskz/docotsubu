package model;

public class MutterEVLogic {
	public void like(Mutter mutter) {
		int count = mutter.getLike();
		mutter.setLike(count +1);
	}

	public void dislike(Mutter mutter) {
		int count = mutter.getDislike();
		mutter.setDislike(count +1);
	}

}
