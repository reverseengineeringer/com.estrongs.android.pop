package com.estrongs.android.cleaner.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class c
{
  String a;
  List<Integer> b;
  
  c(a parama) {}
  
  public void a(int paramInt)
  {
    if (b == null)
    {
      b = new ArrayList();
      b.add(Integer.valueOf(paramInt));
    }
    while (b.contains(Integer.valueOf(paramInt))) {
      return;
    }
    b.add(Integer.valueOf(paramInt));
  }
  
  public int[] a()
  {
    if (b != null)
    {
      int[] arrayOfInt = new int[b.size()];
      Iterator localIterator = b.iterator();
      int i = 0;
      while (localIterator.hasNext())
      {
        arrayOfInt[i] = ((Integer)localIterator.next()).intValue();
        i += 1;
      }
      return arrayOfInt;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */