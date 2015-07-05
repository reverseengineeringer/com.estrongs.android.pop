package com.estrongs.android.pop.view;

import android.webkit.WebIconDatabase;
import com.estrongs.android.ui.d.e;
import com.estrongs.android.util.bd;
import com.estrongs.android.util.o;
import java.io.File;
import java.util.List;

class ei
  implements Runnable
{
  ei(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void run()
  {
    FileExplorerActivity.N(a);
    int i = e.a();
    if (bd.a(FileExplorerActivity.d(a), i))
    {
      o localo = (o)FileExplorerActivity.d(a).remove(i);
      if (localo != null) {
        FileExplorerActivity.a(a, localo, true);
      }
    }
    try
    {
      WebIconDatabase.getInstance().open(a.getDir("icons", 0).getPath());
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */