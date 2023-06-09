//Author: Rafael Pinto, 103379, p5_09

import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;

public class VectorGeneric<T> {
	private T[] vec;		
	private int nElem;	      
	private final static int ALLOC = 50;   
	private int dimVec = ALLOC;     

	@SuppressWarnings("unchecked")
	public VectorGeneric() {
		vec = (T[]) new Object[dimVec];
		nElem = 0;
	}
	
	public boolean addElem(T elem) {
		if (elem == null)
			return false;
		ensureSpace();
		vec[nElem++] = elem;
		return true;
	}

	private void ensureSpace() {
		if (nElem>=dimVec) {
			dimVec += ALLOC;
			@SuppressWarnings("unchecked")
			T[] newArray = (T[]) new Object[dimVec];
			System.arraycopy(vec, 0, newArray, 0, nElem );
			vec = newArray;
		}
	}

	public boolean removeElem(T elem) {
		for (int i = 0; i < nElem; i++) {
			if (vec[i].equals(elem)) {
				if (nElem-i-1 > 0) // not last element
					System.arraycopy(vec, i+1, vec, i, nElem-i-1 );
				vec[--nElem] = null; // libertar último objecto para o GC
				return true;
			}
		}
		return false;
	}

	public int totalElem() {
		return nElem;
	}
	
	public T getElem(int i) {
		return (T) vec[i];
	}

	public Iterator<T> iterator() {
		return (this).new VectorIterator<T>();
	}

	public ListIterator<T> listIterator() {
		return (this).new VectorListIterator<T>();
	}

	public ListIterator<T> listIterator(int index) {
		return (this).new VectorListIterator<T>(index);
	}

	private class VectorIterator<K> implements Iterator<K> {
		private int index;
		
		VectorIterator() {
			index = 0;
		}
	
		public boolean hasNext() {
			return index < nElem;
		}

		@SuppressWarnings("unchecked")
		public K next() {
			if (hasNext())
				return (K)VectorGeneric.this.vec[index++];
			throw new NoSuchElementException("only " + nElem + " elements");
		}

		public void remove() {
			throw new UnsupportedOperationException("Operaçao nao suportada!");
		}
	}

	private class VectorListIterator<K> implements ListIterator<K> {
		private int index;

		VectorListIterator() {
			index = 0;
		}

		VectorListIterator(int index) {
			this.index = index;
		}

		public void add(K elem){
			throw new UnsupportedOperationException("Operaçao nao suportada!");
		}

		public boolean hasNext() {
			return index < nElem;
		}

		public boolean hasPrevious() {
			return index > 0;
		}

		@SuppressWarnings("unchecked")
		public K next() {
			if (hasNext())
				return (K)VectorGeneric.this.vec[index++];
			throw new NoSuchElementException("only " + nElem + " elements");
		}

		public int nextIndex() {
			return index;
		}

		@SuppressWarnings("unchecked")
		public K previous() {
			if (hasPrevious())
				return (K)VectorGeneric.this.vec[index--];
			throw new NoSuchElementException("only " + nElem + " elements");
		}

		public int previousIndex() {
			return index-1;
		}

		public void remove() {
			throw new UnsupportedOperationException("Operaçao nao suportada!");
		}

		public void set(K elem) {
			throw new UnsupportedOperationException("Operaçao nao suportada!");
		}
	}
}
