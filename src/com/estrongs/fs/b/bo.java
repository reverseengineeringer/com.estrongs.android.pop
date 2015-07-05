package com.estrongs.fs.b;

import android.app.Activity;
import com.estrongs.a.a;
import com.estrongs.android.util.bd;

class bo
  implements com.estrongs.a.a.p
{
  bo(bm parambm) {}
  
  public void a(a parama, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 4) {}
    String str;
    for (;;)
    {
      try
      {
        parama = a.b();
        if (!bd.a(parama)) {
          a.a.runOnUiThread(new bp(this, parama));
        }
        return;
      }
      catch (Exception parama)
      {
        parama.printStackTrace();
        return;
      }
      if (paramInt2 == 5)
      {
        str = a.a(parama.getTaskResult());
        if (str != null) {}
        while (!bd.a(str))
        {
          if (getTaskResulta != 12) {
            break label121;
          }
          a.a.runOnUiThread(new bq(this, parama));
          return;
          str = a.c();
        }
      }
    }
    label121:
    a.a.runOnUiThread(new br(this, str));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */