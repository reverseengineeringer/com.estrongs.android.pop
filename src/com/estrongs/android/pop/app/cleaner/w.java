package com.estrongs.android.pop.app.cleaner;

import android.os.Handler;
import com.estrongs.android.cleaner.e;
import com.estrongs.android.cleaner.h;
import java.util.Iterator;
import java.util.List;

class w
  implements e
{
  w(v paramv) {}
  
  public void a(h paramh) {}
  
  public void a(String paramString)
  {
    a.b.b(paramString);
  }
  
  public void a(List<h> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      v.a(a).a(localh);
      v.f(a).a(localh);
    }
    v.a(a).a(paramList);
  }
  
  public void b(h paramh)
  {
    int j = v.a(a).getItemCount();
    int i = j;
    if (j == 0) {
      i = 6;
    }
    v.b(a);
    i = v.c(a) / i;
    j = v.d(a) * i;
    i = 0;
    if (System.currentTimeMillis() - v.e(a) < j) {
      i = (int)(j - (System.currentTimeMillis() - v.e(a)));
    }
    a.b.u().postDelayed(new x(this, paramh), i);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */