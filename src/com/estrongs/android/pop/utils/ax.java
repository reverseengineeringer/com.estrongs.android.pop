package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.util.Log;
import com.estrongs.android.util.am;
import com.estrongs.fs.FileExistException;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import com.estrongs.fs.h;

final class ax
  extends Thread
{
  ax(Activity paramActivity, h paramh, String paramString1, String paramString2, boolean[] paramArrayOfBoolean, boolean paramBoolean) {}
  
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
        a.a(a, a.getText(2131427780));
      }
      return;
    }
    catch (FileExistException localFileExistException)
    {
      for (;;)
      {
        a.a(a, a.getText(2131427817));
        bool = false;
      }
    }
    catch (FileSystemException localFileSystemException)
    {
      str = localFileSystemException.getMessage();
      Log.e("FileOperateUtils", "Failed to renameFile : " + am.D(d), localFileSystemException);
      localActivity = a;
      localStringBuilder = new StringBuilder().append(a.getText(2131427766));
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
 * Qualified Name:     com.estrongs.android.pop.utils.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */