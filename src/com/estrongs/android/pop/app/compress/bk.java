package com.estrongs.android.pop.app.compress;

import android.app.Activity;
import com.estrongs.io.archive.d;
import com.estrongs.io.archive.i;
import java.io.IOException;

class bk
  implements Runnable
{
  bk(bb parambb) {}
  
  public void run()
  {
    try
    {
      i locali = d.a(fa).a, fa).b, fa).f);
      if (locali.k())
      {
        ((Activity)bb.g(a)).runOnUiThread(new bl(this, locali));
        return;
      }
      bb.h(a);
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */