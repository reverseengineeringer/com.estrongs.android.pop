package com.estrongs.android.pop.app.b;

import com.estrongs.android.pop.zeroconf.u;
import com.estrongs.android.pop.zeroconf.v;
import java.io.PrintStream;

class d
  implements v
{
  d(c paramc) {}
  
  public void a(u paramu)
  {
    if (c.a(a)) {
      System.out.println("+++++++++++add service " + k);
    }
    new Thread(new e(this, paramu)).start();
  }
  
  public void b(u paramu)
  {
    if (c.a(a)) {
      System.out.println("-----------delete service " + k);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */