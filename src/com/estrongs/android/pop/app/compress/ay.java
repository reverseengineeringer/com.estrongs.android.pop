package com.estrongs.android.pop.app.compress;

import android.os.Handler;
import com.estrongs.io.archive.h;
import com.estrongs.io.archive.sevenzip.f;
import java.io.File;

class ay
  extends Thread
{
  ay(aw paramaw) {}
  
  public void run()
  {
    a.a = false;
    try
    {
      localFile = aw.a(a).d(aw.b(a), new az(this));
      if (!a.a) {
        break label77;
      }
      if ((localFile != null) && (localFile.exists())) {
        localFile.delete();
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        File localFile;
        localException.printStackTrace();
        if (!a.a)
        {
          str = localException.getMessage();
          if ((localException.getMessage() == null) || (!localException.getMessage().contains("WRONG PASSWORD"))) {
            break;
          }
          aw.a(a, true);
          aw.d(a).post(new bd(this, localException));
        }
        return;
        aw.d(a).sendMessage(aw.d(a).obtainMessage(1, localException.getAbsolutePath()));
      }
    }
    finally
    {
      a.dismiss();
    }
    aw.a(a, false);
    a.dismiss();
    return;
    label77:
    if (localFile == null) {
      throw new Exception("");
    }
    String str;
    while ((str == null) || (!str.contains("rarEncryptedException"))) {}
    boolean[] arrayOfBoolean = new boolean[1];
    arrayOfBoolean[0] = false;
    if ((f.a(null, f.b, arrayOfBoolean)) && (arrayOfBoolean[0] == 0)) {
      aw.d(a).post(new ba(this));
    }
    for (;;)
    {
      a.dismiss();
      return;
      aw.d(a).post(new bc(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */