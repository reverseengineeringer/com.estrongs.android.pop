package com.estrongs.android.pop.view;

import com.estrongs.a.a;
import com.estrongs.a.p;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.m;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.util.ap;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.a.b;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.k;
import java.text.MessageFormat;

class bw
  extends Thread
{
  bw(FileExplorerActivity paramFileExplorerActivity, d paramd, String paramString1, boolean paramBoolean, String paramString2) {}
  
  public void run()
  {
    for (int i = 1;; i = 0) {
      try
      {
        if (a.b(b))
        {
          e.c(e.getString(2131231900));
          return;
        }
        Object localObject = new bx(this);
        ((a)localObject).setTaskDecisionListener(new m(e));
        ((a)localObject).execute(false);
        if (getTaskResulta == 0)
        {
          if (i == 0) {
            break;
          }
          e.c(MessageFormat.format(e.getString(2131231902), new Object[] { d }));
          if ((c) && (ap.bJ(b))) {
            k.a();
          }
          localObject = b.a().h(ap.bB(b));
          if ((localObject == null) || (((h)localObject).getExtra("child_count") == null)) {
            return;
          }
          ao.a((h)localObject);
          return;
        }
      }
      catch (FileSystemException localFileSystemException)
      {
        e.c(e.getString(2131231901) + ":" + localFileSystemException.getMessage());
        return;
      }
    }
    e.c(e.getString(2131231901));
    if ((ac.a() >= 18) && (ap.bJ(b))) {
      e.runOnUiThread(new by(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */