package com.estrongs.android.scanner.d;

import com.estrongs.android.scanner.a.d;
import java.util.List;

class ae
  implements Runnable
{
  private d b;
  
  public ae(z paramz, d paramd)
  {
    b = paramd;
  }
  
  public void run()
  {
    z.c(a).add(b);
    if (z.c(a).size() == 100)
    {
      a.b.e(a.a(), z.c(a));
      z.c(a).clear();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */