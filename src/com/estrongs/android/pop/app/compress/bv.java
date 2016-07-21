package com.estrongs.android.pop.app.compress;

import android.os.Handler;
import com.estrongs.io.archive.i;
import com.estrongs.io.archive.sevenzip.f;
import java.io.File;

class bv
  extends Thread
{
  bv(bs parambs) {}
  
  public void run()
  {
    a.a = false;
    try
    {
      localFile = bs.a(a).d(bs.b(a), new bw(this));
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
          bs.a(a, true);
          bs.d(a).post(new ca(this, localException));
        }
        return;
        bs.d(a).sendMessage(bs.d(a).obtainMessage(1, localException.getAbsolutePath()));
      }
    }
    finally
    {
      a.dismiss();
    }
    bs.a(a, false);
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
      bs.d(a).post(new bx(this));
    }
    for (;;)
    {
      a.dismiss();
      return;
      bs.d(a).post(new bz(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */