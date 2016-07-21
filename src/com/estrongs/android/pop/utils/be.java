package com.estrongs.android.pop.utils;

import android.app.Activity;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
import com.estrongs.fs.FileExistException;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import com.estrongs.fs.h;

final class be
  extends Thread
{
  be(Activity paramActivity, h paramh, String paramString1, String paramString2, boolean[] paramArrayOfBoolean, boolean paramBoolean) {}
  
  public void run()
  {
    d locald = d.a(a);
    boolean bool;
    Activity localActivity;
    StringBuilder localStringBuilder;
    try
    {
      bool = locald.b(b, c);
      e[0] = bool;
      if ((bool) && (f)) {
        a.a(a, a.getText(2131232276));
      }
      return;
    }
    catch (FileExistException localFileExistException)
    {
      for (;;)
      {
        a.a(a, a.getText(2131231900));
        bool = false;
      }
    }
    catch (FileSystemException localFileSystemException)
    {
      str = localFileSystemException.getMessage();
      l.c("FileOperateUtils", "Failed to renameFile : " + ap.F(d), localFileSystemException);
      localActivity = a;
      localStringBuilder = new StringBuilder().append(a.getText(2131231901));
      if (str != null) {}
    }
    for (String str = "";; str = ":" + str)
    {
      a.a(localActivity, str);
      bool = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */