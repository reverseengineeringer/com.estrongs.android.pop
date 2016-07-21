package com.estrongs.android.scanner.d;

import com.estrongs.android.scanner.a.d;
import java.util.List;

class ab
  implements Runnable
{
  private d b;
  
  public ab(z paramz, d paramd)
  {
    b = paramd;
  }
  
  public void run()
  {
    z.d(a).add(b);
    if (z.d(a).size() == 100)
    {
      a.b.b(a.a(), z.d(a));
      z.d(a).clear();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */