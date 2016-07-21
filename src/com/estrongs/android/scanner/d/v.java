package com.estrongs.android.scanner.d;

import java.util.List;

class v
  implements Runnable
{
  private Long b;
  
  public v(t paramt, Long paramLong)
  {
    b = paramLong;
  }
  
  public void run()
  {
    t.d(a).add(b);
    if (t.d(a).size() == 500)
    {
      a.b.a(a.a(), t.d(a));
      t.d(a).clear();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */