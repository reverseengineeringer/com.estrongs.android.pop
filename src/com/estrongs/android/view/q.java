package com.estrongs.android.view;

import com.estrongs.android.pop.app.compress.a;
import com.estrongs.android.pop.app.compress.k;
import java.io.File;
import java.util.List;

class q
  implements com.estrongs.android.pop.app.compress.j
{
  q(e parame, String paramString, List paramList, boolean paramBoolean) {}
  
  public void a(a parama, k paramk)
  {
    if (paramk != null)
    {
      parama = new File(a);
      e.a(d, c);
      e.a(d, a);
      if (3 != e.j(d)) {
        break label79;
      }
      e.c(d, b);
    }
    for (;;)
    {
      e.a(d, b, c);
      return;
      label79:
      if (1 == e.j(d)) {
        e.c(d, parama.getParent());
      } else {
        e.c(d, parama.getParent() + "/" + com.estrongs.fs.util.j.a(a));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */