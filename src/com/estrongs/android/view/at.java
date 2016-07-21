package com.estrongs.android.view;

import com.estrongs.android.pop.app.compress.a;
import com.estrongs.android.pop.app.compress.k;
import java.io.File;
import java.util.List;

class at
  implements com.estrongs.android.pop.app.compress.j
{
  at(ak paramak, String paramString, List paramList, boolean paramBoolean) {}
  
  public void a(a parama, k paramk)
  {
    if (paramk != null)
    {
      parama = new File(a);
      ak.a(d, c);
      ak.a(d, a);
      if (3 != ak.k(d)) {
        break label79;
      }
      ak.c(d, b);
    }
    for (;;)
    {
      ak.a(d, b, c);
      return;
      label79:
      if (1 == ak.k(d)) {
        ak.c(d, parama.getParent());
      } else {
        ak.c(d, parama.getParent() + "/" + com.estrongs.fs.util.j.a(a));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */