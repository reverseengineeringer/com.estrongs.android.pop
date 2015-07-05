package com.estrongs.android.pop.view;

import com.estrongs.a.a;
import com.estrongs.a.p;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.m;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.util.am;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.a.b;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.j;
import java.text.MessageFormat;

class dy
  extends Thread
{
  dy(FileExplorerActivity paramFileExplorerActivity, d paramd, String paramString1, boolean paramBoolean, String paramString2) {}
  
  public void run()
  {
    for (int i = 1;; i = 0) {
      try
      {
        if (a.b(b))
        {
          e.c(e.getString(2131427817));
          return;
        }
        Object localObject = new dz(this);
        ((a)localObject).setTaskDecisionListener(new m(e));
        ((a)localObject).execute(false);
        if (getTaskResulta == 0)
        {
          if (i == 0) {
            break;
          }
          e.c(MessageFormat.format(e.getString(2131427879), new Object[] { d }));
          if ((c) && (am.bs(b))) {
            j.a();
          }
          localObject = b.a().h(am.bk(b));
          if ((localObject == null) || (((h)localObject).getExtra("child_count") == null)) {
            return;
          }
          aj.a((h)localObject);
          return;
        }
      }
      catch (FileSystemException localFileSystemException)
      {
        e.c(e.getString(2131427766) + ":" + localFileSystemException.getMessage());
        return;
      }
    }
    e.c(e.getString(2131427766));
    if ((ac.a() >= 18) && (am.bs(b))) {
      e.runOnUiThread(new ea(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.dy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */