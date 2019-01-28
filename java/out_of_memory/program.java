public class program { 
	public static void main(String[] args) throws Exception {
		program memoryTest = new program();
		memoryTest.generateOOM();
	}
 
	public void generateOOM() {
		int iteratorValue = 20;
		for (int outerIterator = 1; outerIterator < 20; outerIterator++) {
			int loop1 = 2;
			int[] memoryFillIntVar = new int[iteratorValue];
			// feel memoryFillIntVar array in loop..
			do {
				memoryFillIntVar[loop1] = 0;
				loop1--;
			} while (loop1 > 0);
			iteratorValue = iteratorValue * 5;
		}
	} 
}