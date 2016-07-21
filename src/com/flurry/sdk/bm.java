package com.flurry.sdk;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class bm
  implements bn
{
  private final List<bn> a;
  
  public bm()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new bl());
    localArrayList.add(new bq());
    localArrayList.add(new bj());
    localArrayList.add(new bp());
    a = Collections.unmodifiableList(localArrayList);
  }
  
  public boolean a(Context paramContext, br parambr)
  {
    boolean bool2;
    if ((paramContext == null) || (parambr == null)) {
      bool2 = false;
    }
    Iterator localIterator;
    boolean bool1;
    do
    {
      return bool2;
      localIterator = a.iterator();
      bool1 = true;
      bool2 = bool1;
    } while (!localIterator.hasNext());
    if (!((bn)localIterator.next()).a(paramContext, parambr)) {
      bool1 = false;
    }
    for (;;)
    {
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */