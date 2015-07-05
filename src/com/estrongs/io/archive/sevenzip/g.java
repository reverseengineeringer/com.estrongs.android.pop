package com.estrongs.io.archive.sevenzip;

import android.app.Activity;
import com.estrongs.a.a;
import com.estrongs.a.a.o;
import com.estrongs.fs.impl.local.l;
import java.io.File;

final class g
  implements o
{
  g(File paramFile, boolean[] paramArrayOfBoolean, Activity paramActivity, String paramString) {}
  
  public void a(a parama, boolean paramBoolean)
  {
    if (paramBoolean) {
      try
      {
        if (!l.a(a.getPath(), "777", false))
        {
          b[0] = false;
          f.a(c, d);
        }
        return;
      }
      catch (Exception parama)
      {
        b[0] = false;
        f.a(c, d);
        return;
      }
    }
    b[0] = false;
    f.a(c, d);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.sevenzip.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */