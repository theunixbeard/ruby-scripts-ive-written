/*
    
*/

public class MyArrayList {

public static final int START_LENGTH = 10;

  protected int actual_length = 0;
  protected Object[] arrayList = new Object[START_LENGTH];

  Object get(int index) {
      if (index >= actual_length) {
          throw new IndexOutOfBoundsException();
      }
      return arrayList[index];
  }

  void set(int index, Object element) {
      if (index >= actual_length) {
          throw new IndexOutOfBoundsException();
      }
      arrayList[index] = element;
  }

  void remove(int index) {
      if (index >= actual_length) {
          throw new IndexOutOfBoundsException();
      }
      arrayList[index] = null;
      actual_length -= 1;
      // Shift everything to the left
      for(int i = index; i < actual_length; ++i) {
          arrayList[index] = arrayList[index+1];
      }
  }

  void add(Object element) {
      if(actual_length == arrayList.length) {
          Object[] old = arrayList;
          arrayList = new Object[arrayList.length*2];
          for(int i = 0; i < old.length; ++i) {
              arrayList[i] = old[i];
          }
      }
      arrayList[actual_length] = element;
      actual_length += 1;
  }

  int size() {
    return actual_length;
  }

  void printMe() {
    for(int i = 0; i < arrayList.length; ++i) {
      System.out.print(arrayList[i] + " ");
    }
    System.out.println("");
  }

  public static void main(String[] args){
    MyArrayList test = new MyArrayList();
    for(int i = 0; i < 100; ++i) {
      test.add(i);
      if (i % 10 == 5) {
        test.remove(test.size()-1);
      }
      if (i % 10 == 3) {
        test.set(test.size()-1, 111);
      } 
    }
    for(int i = 0; i < test.size(); ++i) {
      System.out.print(test.get(i));
      System.out.print(" ");
      if( i % 9 == 8) {
        System.out.println("");
      }
    }
  }

}





