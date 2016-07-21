package com.estrongs.android.a;

import com.estrongs.android.a.a.k;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

class ag
  implements Callable<Void>
{
  private final k b;
  private final a c;
  
  public ag(ab paramab, k paramk, a parama)
  {
    b = paramk;
    c = parama;
  }
  
  public Void a()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("/");
    b.a(localArrayList);
    b.a(c);
    b.b();
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */