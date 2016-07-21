package com.estrongs.android.scanner.d;

import java.util.List;

class p
  implements Runnable
{
  private String b;
  
  public p(m paramm, String paramString)
  {
    b = paramString;
  }
  
  public void run()
  {
    m.d(a).add(b);
    if (m.d(a).size() == 100)
    {
      a.b.a(m.d(a));
      m.d(a).clear();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */