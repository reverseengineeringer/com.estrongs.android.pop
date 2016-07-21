package com.estrongs.android.pop.view;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.c.b.h;
import com.estrongs.android.ui.guesture.ESGesturePanel;
import com.estrongs.android.ui.navigation.m;
import com.estrongs.android.ui.notification.j;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.dv;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class cr
  extends BroadcastReceiver
{
  boolean a = false;
  
  cr(FileExplorerActivity paramFileExplorerActivity) {}
  
  private void a()
  {
    com.estrongs.android.ui.guesture.b.a();
    b.A.postInvalidate();
  }
  
  private void a(String paramString)
  {
    if (a) {
      return;
    }
    a = true;
    try
    {
      a();
      new ct(this, paramString).start();
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  private void b(String paramString)
  {
    for (;;)
    {
      com.estrongs.android.view.cr localcr;
      synchronized (b.w)
      {
        Iterator localIterator = b.w.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localcr = (com.estrongs.android.view.cr)localIterator.next();
        if (localcr == null) {
          continue;
        }
        String str = ap.bV(localcr.c());
        if ((str == null) || (!str.startsWith(paramString))) {
          continue;
        }
        if (localcr == b.O())
        {
          localcr.a(null);
          localcr.b(true);
          localcr.a(b.E);
          b.E.a(localcr.c(), true);
        }
      }
      localcr.i(true);
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ArrayList localArrayList;
    try
    {
      paramContext = paramIntent.getAction();
      localObject = paramIntent.getData().getPath();
      if (paramContext.equals("android.intent.action.MEDIA_MOUNTED"))
      {
        FileExplorerActivity.f(b, true);
        com.estrongs.android.pop.a.c();
        com.estrongs.android.pop.utils.ad.c();
        com.estrongs.fs.a.b.a().c();
        if (ap.e((String)localObject, com.estrongs.android.pop.b.b()))
        {
          a((String)localObject);
          com.estrongs.android.view.cr.at();
          if (FileExplorerActivity.B(b) == null) {
            break label335;
          }
          localArrayList = new ArrayList();
          localArrayList.add(localObject);
          localObject = FileExplorerActivity.B(b).iterator();
          while (((Iterator)localObject).hasNext()) {
            ((h)((Iterator)localObject).next()).a(localArrayList);
          }
        }
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
        ap.e();
        ap.h();
        new Thread(new cs(this)).start();
        return;
        b((String)localObject);
      }
    }
    finally
    {
      ap.e();
      ap.h();
    }
    if ((paramContext.equals("android.intent.action.MEDIA_REMOVED")) || (paramContext.equals("android.intent.action.MEDIA_UNMOUNTED")) || (paramContext.equals("android.intent.action.MEDIA_BAD_REMOVAL")))
    {
      com.estrongs.android.pop.a.c();
      com.estrongs.android.pop.utils.ad.c();
      com.estrongs.fs.a.b.a().c();
      com.estrongs.android.pop.app.f.a.d = true;
      b((String)localObject);
      com.estrongs.android.view.cr.at();
      if (b.k.P()) {
        j.a(FexApplication.a()).b((String)localObject);
      }
      if (FileExplorerActivity.B(b) != null)
      {
        localArrayList = new ArrayList();
        localArrayList.add(localObject);
        Iterator localIterator = FileExplorerActivity.B(b).iterator();
        while (localIterator.hasNext()) {
          ((h)localIterator.next()).b(localArrayList);
        }
      }
      if (bk.l()) {
        com.estrongs.android.pop.ad.a(FexApplication.a()).S((String)localObject);
      }
    }
    label335:
    if (bk.l()) {
      com.estrongs.fs.impl.local.a.a();
    }
    Object localObject = b.ae();
    if (localObject != null)
    {
      if (!paramContext.equals("android.intent.action.MEDIA_MOUNTED")) {
        break label385;
      }
      ((m)localObject).a(paramIntent.getData().getPath());
    }
    for (;;)
    {
      ap.e();
      ap.h();
      break;
      label385:
      if ((paramContext.equals("android.intent.action.MEDIA_REMOVED")) || (paramContext.equals("android.intent.action.MEDIA_UNMOUNTED")) || (paramContext.equals("android.intent.action.MEDIA_BAD_REMOVAL"))) {
        ((m)localObject).b(paramIntent.getData().getPath());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */