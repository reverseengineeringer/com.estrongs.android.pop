package com.estrongs.android.pop.view;

import android.webkit.WebIconDatabase;
import com.estrongs.android.ui.d.i;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.q;
import java.io.File;
import java.util.List;

class cf
  implements Runnable
{
  cf(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void run()
  {
    FileExplorerActivity.F(a);
    int i = a.au().a();
    if (bk.a(FileExplorerActivity.c(a), i))
    {
      q localq = (q)FileExplorerActivity.c(a).remove(i);
      if (localq != null) {
        FileExplorerActivity.a(a, localq, true);
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
 * Qualified Name:     com.estrongs.android.pop.view.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */