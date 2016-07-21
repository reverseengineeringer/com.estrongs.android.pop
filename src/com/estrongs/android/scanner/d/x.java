package com.estrongs.android.scanner.d;

import com.estrongs.android.scanner.a.c;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

class x
  implements Runnable
{
  private c b;
  
  public x(t paramt, c paramc)
  {
    b = paramc;
  }
  
  public void run()
  {
    t.a(a).add(b);
    if (t.a(a).size() == 500)
    {
      t.b(a).addAndGet(500);
      a.b.c(a.a(), t.a(a));
      t.a(a).clear();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */