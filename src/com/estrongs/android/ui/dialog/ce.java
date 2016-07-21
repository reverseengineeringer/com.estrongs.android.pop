package com.estrongs.android.ui.dialog;

import android.app.Activity;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.utils.a;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.o.b;
import com.estrongs.fs.impl.pcs.PcsFileSystem;

class ce
  implements Runnable
{
  ce(ca paramca, String paramString) {}
  
  public void run()
  {
    try
    {
      ca.a(b, ca.d(b).getString(2131231219), false);
      String str1 = b.c(a);
      if (str1 != null) {
        break label81;
      }
      throw new NetFsException("Network error", null);
    }
    catch (NetFsException localNetFsException)
    {
      localNetFsException.printStackTrace();
      ca.a(b, ca.d(b).getString(2131231915), false);
      a.a(ca.d(b), 2131231915);
    }
    return;
    label81:
    ca.a(b, a);
    String str2;
    Object localObject;
    if (ap.aL(a))
    {
      str2 = PcsFileSystem.d(localNetFsException);
      if (str2 != null)
      {
        str2 = bk.a(str2, false).replace(' ', '_').replace('/', '-');
        str2 = "http://www.estrongs.com/esshare?s=" + str2;
        ca.b(b, str2);
      }
      localObject = bk.a(localNetFsException, false).replace(' ', '_').replace('/', '-');
      localObject = "http://www.estrongs.com/esshare?s=" + (String)localObject;
      ca.c(b, (String)localObject);
      str2 = PcsFileSystem.d((String)localObject);
      if (str2 == null) {
        ca.d(b, (String)localObject);
      }
    }
    for (;;)
    {
      ca.a(b, ca.d(b).getString(2131230893), true);
      if (!b.o(ca.g(b))) {
        break;
      }
      localObject = FileExplorerActivity.X();
      str2 = (String)d.a().j(ca.g(b)).getExtra("public_share_link");
      if ((str2 != null) && (str2.length() != 0)) {
        break;
      }
      ((FileExplorerActivity)localObject).a(new cf(this, (FileExplorerActivity)localObject));
      return;
      ca.d(b, str2);
      continue;
      ca.c(b, (String)localObject);
      ca.d(b, (String)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */