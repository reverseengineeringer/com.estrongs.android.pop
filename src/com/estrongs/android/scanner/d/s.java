package com.estrongs.android.scanner.d;

import com.estrongs.android.scanner.a.b;
import com.estrongs.android.util.l;
import java.util.Set;

class s
  implements Runnable
{
  private b b;
  
  public s(m paramm, b paramb)
  {
    b = paramb;
  }
  
  public void run()
  {
    m.c(a).add(b);
    if (m.c(a).size() == 100)
    {
      l.c(a.a, "batch flush new into db:" + a.a());
      a.b.a(m.c(a));
      m.c(a).clear();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */