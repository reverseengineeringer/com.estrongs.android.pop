package com.estrongs.android.pop.app.c.a;

import java.util.LinkedList;
import java.util.Random;

public class b
  extends c
{
  private int d;
  private int e;
  private LinkedList<Integer> f = new LinkedList();
  
  protected int a(int paramInt)
  {
    if (a == 0) {
      return -1;
    }
    int i = paramInt;
    if (paramInt == -1) {
      i = a - 1;
    }
    paramInt = (d + 1) % f.size();
    if ((((Integer)f.get(paramInt)).intValue() != e) || (c == 1)) {
      return ((Integer)f.get(paramInt)).intValue();
    }
    c();
    if (c == 2) {
      return a(i);
    }
    return -1;
  }
  
  protected void a()
  {
    c();
  }
  
  protected void b()
  {
    int i;
    if (b != -1) {
      i = 0;
    }
    for (;;)
    {
      if (i < f.size())
      {
        if (((Integer)f.get(i)).intValue() == b) {
          d = i;
        }
      }
      else
      {
        if (e == -1) {
          e = b;
        }
        return;
      }
      i += 1;
    }
  }
  
  public void c()
  {
    f.clear();
    LinkedList localLinkedList = new LinkedList();
    int i = 0;
    while (i < a)
    {
      localLinkedList.add(Integer.valueOf(i));
      i += 1;
    }
    Random localRandom = new Random();
    while (localLinkedList.size() > 0)
    {
      Integer localInteger = (Integer)localLinkedList.remove(localRandom.nextInt(localLinkedList.size()));
      f.add(localInteger);
    }
    e = -1;
  }
  
  public int d()
  {
    if (a == 0) {
      return -1;
    }
    int i = (b + 1) % a;
    int j = a(i);
    if (j == -1)
    {
      c();
      b();
      return a(i);
    }
    return j;
  }
  
  public int e()
  {
    if (a == 0) {
      return -1;
    }
    if (d <= 0) {}
    for (int i = 0;; i = (d - 1) % f.size()) {
      return ((Integer)f.get(i)).intValue();
    }
  }
  
  public int f()
  {
    if (e != -1) {
      return e;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.c.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */