package com.estrongs.android.ui.dialog;

import android.app.Activity;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.utils.a;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.j.b;
import com.estrongs.fs.impl.pcs.PcsFileSystem;

class cc
  implements Runnable
{
  cc(by paramby, String paramString) {}
  
  public void run()
  {
    try
    {
      by.a(b, by.d(b).getString(2131428714), false);
      String str1 = b.c(a);
      if (str1 != null) {
        break label81;
      }
      throw new NetFsException("Network error", null);
    }
    catch (NetFsException localNetFsException)
    {
      localNetFsException.printStackTrace();
      by.a(b, by.d(b).getString(2131427763), false);
      a.a(by.d(b), 2131427763);
    }
    return;
    label81:
    by.a(b, a);
    String str2;
    Object localObject;
    if (am.aB(a))
    {
      str2 = PcsFileSystem.d(localNetFsException);
      if (str2 != null)
      {
        str2 = bd.a(str2, false).replace(' ', '_').replace('/', '-');
        str2 = "http://www.estrongs.com/esshare?s=" + str2;
        by.b(b, str2);
      }
      localObject = bd.a(localNetFsException, false).replace(' ', '_').replace('/', '-');
      localObject = "http://www.estrongs.com/esshare?s=" + (String)localObject;
      by.c(b, (String)localObject);
      str2 = PcsFileSystem.d((String)localObject);
      if (str2 == null) {
        by.d(b, (String)localObject);
      }
    }
    for (;;)
    {
      by.a(b, by.d(b).getString(2131427389), true);
      if (!b.o(by.g(b))) {
        break;
      }
      localObject = FileExplorerActivity.J();
      str2 = (String)d.a().j(by.g(b)).getExtra("public_share_link");
      if ((str2 != null) && (str2.length() != 0)) {
        break;
      }
      ((FileExplorerActivity)localObject).a(new cd(this, (FileExplorerActivity)localObject));
      return;
      by.d(b, str2);
      continue;
      by.c(b, (String)localObject);
      by.d(b, (String)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */