package com.estrongs.android.pop.app;

import android.app.Activity;
import com.estrongs.a.a;
import com.estrongs.a.a.p;
import com.estrongs.fs.b.ad;
import java.io.File;

class ac
  implements p
{
  ac(ab paramab) {}
  
  public void a(a parama, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 4)
    {
      parama = ((ad)parama).c();
      if (new File(parama).exists())
      {
        parama = b.a(parama);
        a.a.startActivity(parama);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */