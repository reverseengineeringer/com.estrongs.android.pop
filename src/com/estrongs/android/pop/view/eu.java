package com.estrongs.android.pop.view;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.utils.aa;
import com.estrongs.android.ui.c.b.t;
import com.estrongs.android.ui.guesture.ESGesturePanel;
import com.estrongs.android.ui.navigation.n;
import com.estrongs.android.ui.notification.i;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.aw;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class eu
  extends BroadcastReceiver
{
  boolean a = false;
  
  eu(FileExplorerActivity paramFileExplorerActivity) {}
  
  private void a()
  {
    com.estrongs.android.ui.guesture.b.a();
    b.E.postInvalidate();
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
      new ew(this, paramString).start();
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
      aw localaw;
      synchronized (b.x)
      {
        Iterator localIterator = b.x.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localaw = (aw)localIterator.next();
        if (localaw == null) {
          continue;
        }
        String str = am.bE(localaw.c());
        if ((str == null) || (!str.startsWith(paramString))) {
          continue;
        }
        if (localaw == b.y())
        {
          localaw.a(null);
          localaw.b(true);
          localaw.a(b.I);
        }
      }
      localaw.i(true);
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      paramContext = paramIntent.getAction();
      localObject = paramIntent.getData().getPath();
      if (!paramContext.equals("android.intent.action.MEDIA_MOUNTED")) {
        break label189;
      }
      FileExplorerActivity.e(b, true);
      com.estrongs.android.pop.a.b();
      aa.c();
      com.estrongs.fs.a.b.a().c();
      if (!am.e((String)localObject, com.estrongs.android.pop.b.b())) {
        break label167;
      }
      a((String)localObject);
      aw.ae();
      if (FileExplorerActivity.F(b) != null)
      {
        localArrayList = new ArrayList();
        localArrayList.add(localObject);
        FileExplorerActivity.F(b).a(localArrayList);
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        ArrayList localArrayList;
        label167:
        paramContext.printStackTrace();
        am.e();
        am.h();
        continue;
        label189:
        if ((paramContext.equals("android.intent.action.MEDIA_REMOVED")) || (paramContext.equals("android.intent.action.MEDIA_UNMOUNTED")) || (paramContext.equals("android.intent.action.MEDIA_BAD_REMOVAL")))
        {
          com.estrongs.android.pop.a.b();
          aa.c();
          com.estrongs.fs.a.b.a().c();
          com.estrongs.android.pop.app.b.a.d = true;
          b((String)localObject);
          aw.ae();
          if (b.m.O()) {
            i.a(FexApplication.a()).b((String)localObject);
          }
          if (FileExplorerActivity.F(b) != null)
          {
            localArrayList = new ArrayList();
            localArrayList.add(localObject);
            FileExplorerActivity.F(b).b(localArrayList);
          }
          if (bd.l()) {
            ad.a(FexApplication.a()).T((String)localObject);
          }
        }
      }
    }
    finally
    {
      am.e();
      am.h();
    }
    if (bd.l()) {
      com.estrongs.fs.impl.local.a.a();
    }
    Object localObject = FileExplorerActivity.f(b);
    if (localObject != null)
    {
      if (!paramContext.equals("android.intent.action.MEDIA_MOUNTED")) {
        break label331;
      }
      ((n)localObject).a(paramIntent.getData().getPath());
    }
    for (;;)
    {
      am.e();
      am.h();
      new Thread(new ev(this)).start();
      return;
      b((String)localObject);
      break;
      label331:
      if ((paramContext.equals("android.intent.action.MEDIA_REMOVED")) || (paramContext.equals("android.intent.action.MEDIA_UNMOUNTED")) || (paramContext.equals("android.intent.action.MEDIA_BAD_REMOVAL"))) {
        ((n)localObject).b(paramIntent.getData().getPath());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.eu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */