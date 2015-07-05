package android.support.v4.app;

import android.app.Notification;
import java.util.ArrayList;
import java.util.Iterator;

class al
  implements ah
{
  public Notification a(af paramaf)
  {
    ap localap = new ap(a, r, b, c, h, f, i, d, e, g, n, o, p, k, j, m);
    Iterator localIterator = q.iterator();
    while (localIterator.hasNext())
    {
      ac localac = (ac)localIterator.next();
      localap.a(a, b, c);
    }
    if (l != null)
    {
      if (!(l instanceof ae)) {
        break label172;
      }
      paramaf = (ae)l;
      localap.a(d, f, e, a);
    }
    for (;;)
    {
      return localap.a();
      label172:
      if ((l instanceof ag))
      {
        paramaf = (ag)l;
        localap.a(d, f, e, a);
      }
      else if ((l instanceof ad))
      {
        paramaf = (ad)l;
        localap.a(d, f, e, a, b, c);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */