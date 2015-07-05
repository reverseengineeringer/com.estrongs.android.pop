package com.estrongs.fs.impl.f;

import com.estrongs.android.util.bd;
import com.estrongs.fs.m;
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
      size = bd.b(c);
      lastModified = (e.getTimeInMillis() / 1000L * 1000L);
      if (!parama.a()) {
        break;
      }
      type = m.a;
      return;
    }
    type = m.b;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.f.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */