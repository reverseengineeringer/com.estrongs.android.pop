package com.estrongs.android.pop.utils;

import android.content.Context;
import com.estrongs.a.a;
import com.estrongs.a.a.p;
import com.estrongs.android.pop.app.b;
import com.estrongs.fs.b.ad;
import java.io.File;

class y
  implements p
{
  y(x paramx) {}
  
  public void a(a parama, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 4)
    {
      parama = ((ad)parama).c();
      if (new File(parama).exists())
      {
        parama = b.a(parama);
        a.b.startActivity(parama);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */