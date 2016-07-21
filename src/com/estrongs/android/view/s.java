package com.estrongs.android.view;

import com.estrongs.android.pop.app.compress.a;
import com.estrongs.android.pop.app.compress.k;
import java.io.File;
import java.util.List;

class s
  implements com.estrongs.android.pop.app.compress.j
{
  s(g paramg, String paramString, List paramList, boolean paramBoolean) {}
  
  public void a(a parama, k paramk)
  {
    if (paramk != null)
    {
      parama = new File(a);
      g.a(d, c);
      g.a(d, a);
      if (3 != g.j(d)) {
        break label79;
      }
      g.c(d, b);
    }
    for (;;)
    {
      g.a(d, b, c);
      return;
      label79:
      if (1 == g.j(d)) {
        g.c(d, parama.getParent());
      } else {
        g.c(d, parama.getParent() + "/" + com.estrongs.fs.util.j.a(a));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */