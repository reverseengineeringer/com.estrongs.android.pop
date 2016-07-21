package com.estrongs.android.pop.app.diskusage;

import com.estrongs.android.widget.bh;
import java.io.File;

class i
  implements com.estrongs.fs.util.h
{
  i(h paramh) {}
  
  public void a(File paramFile)
  {
    long l2 = paramFile.length();
    long l1 = l2;
    if (l2 % h.a(a) != 0L) {
      l1 = (l2 / h.a(a) + 1L) * h.a(a);
    }
    h.a(a, l1 + h.b(a));
    try
    {
      if (h.c(a) != null)
      {
        h.c(a).setMessage(paramFile.getAbsolutePath());
        h.c(a).b(h.b(a));
      }
      return;
    }
    catch (NullPointerException paramFile) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */