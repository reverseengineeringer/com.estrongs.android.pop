package com.dianxinos.lockscreen.ui;

import android.graphics.drawable.Drawable;
import com.dianxinos.lockscreen.c.l;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

class d
  implements Runnable
{
  d(ChargeCleanView paramChargeCleanView, List paramList) {}
  
  public void run()
  {
    int i = l.a(b.getContext(), 50);
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      Drawable localDrawable = (Drawable)localIterator.next();
      if (localDrawable != null)
      {
        g localg = new g(b);
        a = localDrawable;
        a.setBounds(0, 0, i, i);
        localLinkedList.add(localg);
      }
    }
    b.post(new e(this, localLinkedList, i));
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */