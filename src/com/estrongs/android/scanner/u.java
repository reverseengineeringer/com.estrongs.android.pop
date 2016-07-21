package com.estrongs.android.scanner;

import com.estrongs.android.util.ap;
import java.util.Iterator;
import java.util.List;

class u
  implements Runnable
{
  u(l paraml, List paramList) {}
  
  public void run()
  {
    com.estrongs.android.util.l.e("Cataloger", "create number:" + a.size());
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      com.estrongs.android.util.l.e("Cataloger", "create:" + str);
      if ((str != null) && (ap.bl(str)) && (!str.contains("/.estrongs/")))
      {
        str = ap.bV(str);
        int i = l.a(b, str);
        l.a(b, 1, str, i);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */