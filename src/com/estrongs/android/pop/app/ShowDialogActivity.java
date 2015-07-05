package com.estrongs.android.pop.app;

import android.app.Dialog;
import android.app.NotificationManager;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.estrongs.a.a.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.dialog.ix;
import com.estrongs.android.ui.dialog.j;
import com.estrongs.android.ui.dialog.kf;
import com.estrongs.android.ui.dialog.km;
import com.estrongs.android.ui.notification.e;
import com.estrongs.android.util.am;
import com.estrongs.fs.d;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ShowDialogActivity
  extends ESActivity
{
  private long a = -1L;
  private boolean b = false;
  
  private void a()
  {
    new ct(this).a(2131427490).b(2131427656).b(2131427358, new ld(this)).c(2131427340, new lc(this)).a(new lb(this)).c().setCanceledOnTouchOutside(false);
  }
  
  private void a(Intent paramIntent)
  {
    boolean bool2 = false;
    String str = paramIntent.getData().toString();
    cg localcg = new cg(this);
    localcg.setTitle(paramIntent.getStringExtra("title"));
    localcg.setMessage(paramIntent.getStringExtra("message"));
    localcg.setOnDismissListener(new ll(this));
    if (str == null) {
      return;
    }
    for (;;)
    {
      boolean bool1;
      try
      {
        boolean bool3 = paramIntent.getBooleanExtra("pathIsDir", false);
        bool1 = bool3;
        if (bool3) {
          break label242;
        }
        bool1 = str.endsWith("/");
      }
      catch (Exception paramIntent)
      {
        paramIntent.printStackTrace();
        return;
      }
      if ((bool2) && (!am.bb(str)))
      {
        localcg.setConfirmButton(getString(2131428130), new ku(this, str, localcg));
        localcg.setCancelButton(getString(2131428131), new kw(this, str));
        localcg.show();
        return;
      }
      paramIntent = new kx(this, str, bool2);
      if ((am.aB(str)) && (com.estrongs.android.ui.pcs.r.a().c()))
      {
        localcg.setConfirmButton(getString(2131428131), paramIntent);
        localcg.setCancelButton(getString(2131428613), new ky(this, localcg));
      }
      else
      {
        localcg.setSingleButton(getString(2131428131), paramIntent);
        continue;
        label242:
        if (!bool1) {
          bool2 = true;
        }
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent();
    a = paramBundle.getLongExtra("task_id", -1L);
    Object localObject1;
    if (paramBundle.getBooleanExtra("resume_task", false))
    {
      localObject1 = e.a(a);
      if ((localObject1 != null) && (d.i(n.getAbsolutePath())))
      {
        paramBundle = new ix(this, paramBundle.getStringExtra("task_title"), (com.estrongs.a.a)localObject1, true, true);
        paramBundle.a(false);
        paramBundle.show();
        paramBundle.setOnDismissListener(new kt(this));
      }
    }
    int i;
    do
    {
      do
      {
        return;
        paramBundle = new ix(this, paramBundle.getStringExtra("task_title"), paramBundle.getStringExtra("task_source_names"), paramBundle.getStringExtra("count_info"), paramBundle.getStringExtra("source"), paramBundle.getStringExtra("target"), true);
        paramBundle.a(false);
        paramBundle.show();
        paramBundle.setOnDismissListener(new le(this));
        return;
        if (a != -1L)
        {
          localObject1 = com.estrongs.a.a.getTask(a);
          if (localObject1 != null)
          {
            localObject2 = (com.estrongs.android.a.a)com.estrongs.android.a.a.a.get(Long.valueOf(a));
            if ((paramBundle.getBooleanExtra("needAuth", false)) || (localObject2 != null))
            {
              if (localObject2 != null)
              {
                ((com.estrongs.android.a.a)localObject2).dismiss();
                com.estrongs.android.a.a.a.remove(Long.valueOf(a));
              }
              paramBundle = (c)((com.estrongs.a.a)localObject1).getDecisionData(c.class);
              localObject2 = new com.estrongs.android.a.a(this, a);
              ((com.estrongs.android.a.a)localObject2).setCancelable(false);
              ((com.estrongs.android.a.a)localObject2).a(8);
              ((com.estrongs.android.a.a)localObject2).a(new lf(this, paramBundle, (com.estrongs.a.a)localObject1));
              ((com.estrongs.android.a.a)localObject2).setCancelButton(getString(2131427340), new lg(this, paramBundle, (com.estrongs.a.a)localObject1));
              ((com.estrongs.android.a.a)localObject2).setOnDismissListener(new lh(this));
              ((com.estrongs.android.a.a)localObject2).show();
              com.estrongs.android.a.a.a.put(Long.valueOf(a), localObject2);
              return;
            }
            if (ix.d.get(Long.valueOf(a)) != null)
            {
              ((Dialog)ix.d.get(Long.valueOf(a))).show();
              finish();
              return;
            }
            if (com.estrongs.a.a.getTask(a) == null)
            {
              finish();
              return;
            }
            paramBundle = new ix(this, paramBundle.getStringExtra("task_title"), com.estrongs.a.a.getTask(a), paramBundle.getBooleanExtra("creatreNotification", false));
            paramBundle.a(false);
            paramBundle.setOnDismissListener(new li(this));
            paramBundle.show();
            b = true;
            return;
          }
          if (paramBundle.getIntExtra("notification_id", -1) != -1) {
            ((NotificationManager)getSystemService("notification")).cancel(paramBundle.getIntExtra("notification_id", -1));
          }
          finish();
          return;
        }
        if (paramBundle.getBooleanExtra("openfileOrFolder", false))
        {
          a(paramBundle);
          return;
        }
        if (paramBundle.getBooleanExtra("compress", false))
        {
          if ((!FexApplication.a().toString().equals(paramBundle.getStringExtra("application"))) && (paramBundle.getIntExtra("notification_id", -1) != -1)) {
            ((NotificationManager)getSystemService("notification")).cancel(paramBundle.getIntExtra("notification_id", -1));
          }
          finish();
          return;
        }
        if (paramBundle.getBooleanExtra("stop_ftp_server", false))
        {
          a();
          return;
        }
        if (paramBundle.getBooleanExtra("openApkFile", false))
        {
          new j(this, com.estrongs.fs.impl.local.h.b(paramBundle.getData().toString())).a(new lj(this)).a();
          return;
        }
      } while (!paramBundle.getBooleanExtra("perm_update_dialog", false));
      i = paramBundle.getIntExtra("version", 0);
      localObject1 = paramBundle.getStringExtra("url");
      paramBundle = paramBundle.getStringExtra("market");
    } while ((i == 0) || (localObject1 == null));
    Object localObject2 = new km();
    a = ("" + i);
    b = paramBundle;
    c = new ArrayList(1);
    c.add(localObject1);
    paramBundle = new kf(this, 2, (km)localObject2, 1, 2131428528);
    paramBundle.a();
    paramBundle.a(new lk(this));
    paramBundle.b();
  }
  
  protected void onDestroy()
  {
    if ((b) && (a != -1L) && (ix.d.containsKey(Long.valueOf(a))))
    {
      ((Dialog)ix.d.get(Long.valueOf(a))).setOnDismissListener(null);
      ((Dialog)ix.d.get(Long.valueOf(a))).dismiss();
      ix.d.remove(Long.valueOf(a));
    }
    Object localObject = (com.estrongs.android.a.a)com.estrongs.android.a.a.a.get(Long.valueOf(a));
    if ((localObject != null) && (((com.estrongs.android.a.a)localObject).getContext() == this))
    {
      com.estrongs.android.a.a.a.remove(Long.valueOf(a));
      localObject = com.estrongs.a.a.getTask(a);
      if (localObject != null)
      {
        c localc = (c)((com.estrongs.a.a)localObject).getDecisionData(c.class);
        d = true;
        ((com.estrongs.a.a)localObject).sendMessage(5, new Object[] { localc });
      }
    }
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ShowDialogActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */