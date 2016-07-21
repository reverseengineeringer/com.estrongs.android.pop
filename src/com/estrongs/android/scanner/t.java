package com.estrongs.android.scanner;

import com.estrongs.android.util.ap;
import java.util.Iterator;
import java.util.List;

class t
  implements Runnable
{
  t(l paraml, List paramList) {}
  
  public void run()
  {
    com.estrongs.android.util.l.e("Cataloger", "delete number:" + a.size());
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      com.estrongs.android.util.l.e("Cataloger", "delete:" + str);
      if ((str != null) && (ap.bl(str)) && (!str.contains("/.estrongs/")))
      {
        str = ap.bV(str);
        l.a(b, 3, str, 0);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */