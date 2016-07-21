package com.estrongs.android.scanner.d;

import com.estrongs.android.scanner.a.d;
import com.estrongs.android.util.l;
import java.util.Set;

class ad
  implements Runnable
{
  private d b;
  
  public ad(z paramz, d paramd)
  {
    b = paramd;
  }
  
  public void run()
  {
    z.b(a).add(b);
    if (z.b(a).size() == 100)
    {
      l.c(a.a, "batch flush new into db:" + a.a());
      a.b.a(a.a(), z.b(a));
      z.b(a).clear();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */