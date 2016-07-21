package com.estrongs.fs.impl.k;

import com.estrongs.android.util.bk;
import com.estrongs.fs.w;
import java.util.Calendar;

public class b
  extends com.estrongs.fs.a
{
  public b(a parama)
  {
    StringBuilder localStringBuilder = new StringBuilder().append("flashair://flashair");
    if (a.endsWith("/")) {}
    for (String str = a;; str = a + "/")
    {
      path = (str + b);
      absolutePath = path;
      name = b;
      size = bk.b(c);
      lastModified = (e.getTimeInMillis() / 1000L * 1000L);
      if (!parama.a()) {
        break;
      }
      type = w.a;
      return;
    }
    type = w.b;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.k.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */