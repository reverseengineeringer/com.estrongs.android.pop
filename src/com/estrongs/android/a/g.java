package com.estrongs.android.a;

import com.estrongs.android.a.b.a;
import com.estrongs.android.util.l;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

class g
  implements j
{
  g(b paramb) {}
  
  public void a(String paramString)
  {
    l.e(b.h(), "AppAnalyzer finish!!");
    b.d(a, true);
    paramString = b.d(a).iterator();
    while (paramString.hasNext()) {
      ((j)paramString.next()).a(b.b(a));
    }
    if (b.c(a) != null) {
      b.c(a).a();
    }
  }
  
  public void a(String paramString, Map<String, a> paramMap) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */