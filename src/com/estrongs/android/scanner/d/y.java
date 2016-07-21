package com.estrongs.android.scanner.d;

import com.estrongs.android.scanner.a.c;
import java.util.List;

class y
  implements Runnable
{
  private c b;
  
  public y(t paramt, c paramc)
  {
    b = paramc;
  }
  
  public void run()
  {
    t.c(a).add(b);
    if (t.c(a).size() == 500)
    {
      a.b.d(a.a(), t.c(a));
      t.c(a).clear();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */