package com.estrongs.android.pop.app.compress;

import android.app.Activity;
import com.estrongs.io.archive.c;
import com.estrongs.io.archive.h;
import java.io.IOException;

class o
  implements Runnable
{
  o(l paraml) {}
  
  public void run()
  {
    try
    {
      h localh = c.a(l.i(a), l.j(a), l.k(a));
      if (localh.k())
      {
        ((Activity)l.d(a)).runOnUiThread(new p(this, localh));
        return;
      }
      l.m(a);
      ((Activity)l.d(a)).runOnUiThread(new t(this));
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */