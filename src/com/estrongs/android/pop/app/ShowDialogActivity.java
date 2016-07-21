package com.estrongs.android.pop.app;

import android.app.Dialog;
import android.app.NotificationManager;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.esclasses.ESResourceActivity;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.dialog.j;
import com.estrongs.android.ui.dialog.jh;
import com.estrongs.android.ui.dialog.kq;
import com.estrongs.android.ui.dialog.kx;
import com.estrongs.android.ui.notification.f;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.util.ap;
import com.estrongs.fs.b.r;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.i;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ShowDialogActivity
  extends ESResourceActivity
{
  private long a = -1L;
  private boolean b = false;
  private com.estrongs.android.j.c d = null;
  
  private void a()
  {
    new cv(this).a(2131230997).b(2131231869).b(2131230897, new lu(this)).c(2131231265, new lt(this)).a(new ls(this)).c().setCanceledOnTouchOutside(false);
  }
  
  private void a(Intent paramIntent)
  {
    boolean bool2 = false;
    String str = paramIntent.getData().toString();
    ci localci = new ci(this);
    localci.setTitle(paramIntent.getStringExtra("title"));
    localci.setMessage(paramIntent.getStringExtra("message"));
    localci.setOnDismissListener(new mc(this));
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
      if ((bool2) && (!ap.bm(str)))
      {
        localci.setConfirmButton(getString(2131231886), new ll(this, str, localci));
        localci.setCancelButton(getString(2131231887), new ln(this, str));
        localci.show();
        return;
      }
      paramIntent = new lo(this, str, bool2);
      if ((ap.aL(str)) && (u.a().c()))
      {
        localci.setConfirmButton(getString(2131231887), paramIntent);
        localci.setCancelButton(getString(2131231940), new lp(this, localci));
      }
      else
      {
        localci.setSingleButton(getString(2131231887), paramIntent);
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
      localObject1 = f.a(a);
      if ((localObject1 != null) && (d.i(n.getAbsolutePath())))
      {
        paramBundle = new jh(this, paramBundle.getStringExtra("task_title"), (com.estrongs.a.a)localObject1, true, true);
        paramBundle.a(false);
        paramBundle.show();
        paramBundle.setOnDismissListener(new lk(this));
      }
    }
    int i;
    do
    {
      do
      {
        do
        {
          return;
          paramBundle = new jh(this, paramBundle.getStringExtra("task_title"), paramBundle.getStringExtra("task_source_names"), paramBundle.getStringExtra("count_info"), paramBundle.getStringExtra("source"), paramBundle.getStringExtra("target"), true);
          paramBundle.a(false);
          paramBundle.show();
          paramBundle.setOnDismissListener(new lv(this));
          return;
          if (a != -1L)
          {
            localObject1 = com.estrongs.a.a.getTask(a);
            if (localObject1 != null)
            {
              localObject2 = (com.estrongs.android.d.a)com.estrongs.android.d.a.a.get(Long.valueOf(a));
              if ((paramBundle.getBooleanExtra("needAuth", false)) || (localObject2 != null))
              {
                if (localObject2 != null)
                {
                  ((com.estrongs.android.d.a)localObject2).dismiss();
                  com.estrongs.android.d.a.a.remove(Long.valueOf(a));
                }
                paramBundle = (com.estrongs.a.a.c)((com.estrongs.a.a)localObject1).getDecisionData(com.estrongs.a.a.c.class);
                localObject2 = new com.estrongs.android.d.a(this, a);
                ((com.estrongs.android.d.a)localObject2).setCancelable(false);
                ((com.estrongs.android.d.a)localObject2).a(8);
                ((com.estrongs.android.d.a)localObject2).a(new lw(this, paramBundle, (com.estrongs.a.a)localObject1));
                ((com.estrongs.android.d.a)localObject2).setCancelButton(getString(2131231265), new lx(this, paramBundle, (com.estrongs.a.a)localObject1));
                ((com.estrongs.android.d.a)localObject2).setOnDismissListener(new ly(this));
                ((com.estrongs.android.d.a)localObject2).show();
                com.estrongs.android.d.a.a.put(Long.valueOf(a), localObject2);
                return;
              }
              if (jh.d.get(Long.valueOf(a)) != null)
              {
                ((Dialog)jh.d.get(Long.valueOf(a))).show();
                finish();
                return;
              }
              if (com.estrongs.a.a.getTask(a) == null)
              {
                finish();
                return;
              }
              paramBundle = new jh(this, paramBundle.getStringExtra("task_title"), com.estrongs.a.a.getTask(a), paramBundle.getBooleanExtra("creatreNotification", false));
              paramBundle.a(false);
              paramBundle.setOnDismissListener(new lz(this));
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
          if (!paramBundle.getBooleanExtra("openfileOrFolder", false)) {
            break;
          }
          a(paramBundle);
        } while (!getString(2131230847).equals(paramBundle.getStringExtra("title")));
        d = com.estrongs.android.j.c.a(this);
        try
        {
          d.d("act3");
          d.a("act3", "click_download_progress");
          return;
        }
        catch (Exception paramBundle)
        {
          paramBundle.printStackTrace();
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
          new j(this, i.b(paramBundle.getData().toString())).a(new ma(this)).a();
          return;
        }
      } while (!paramBundle.getBooleanExtra("perm_update_dialog", false));
      i = paramBundle.getIntExtra("version", 0);
      localObject1 = paramBundle.getStringExtra("url");
      paramBundle = paramBundle.getStringExtra("market");
    } while ((i == 0) || (localObject1 == null));
    Object localObject2 = new kx();
    a = ("" + i);
    b = paramBundle;
    c = new ArrayList(1);
    c.add(localObject1);
    paramBundle = new kq(this, 2, (kx)localObject2, 1, 2131231984);
    paramBundle.a();
    paramBundle.a(new mb(this));
    paramBundle.b();
  }
  
  protected void onDestroy()
  {
    if ((b) && (a != -1L) && (jh.d.containsKey(Long.valueOf(a))))
    {
      ((Dialog)jh.d.get(Long.valueOf(a))).setOnDismissListener(null);
      ((Dialog)jh.d.get(Long.valueOf(a))).dismiss();
      jh.d.remove(Long.valueOf(a));
    }
    Object localObject = (com.estrongs.android.d.a)com.estrongs.android.d.a.a.get(Long.valueOf(a));
    if ((localObject != null) && (((com.estrongs.android.d.a)localObject).getContext() == this))
    {
      com.estrongs.android.d.a.a.remove(Long.valueOf(a));
      localObject = com.estrongs.a.a.getTask(a);
      if (localObject != null)
      {
        com.estrongs.a.a.c localc = (com.estrongs.a.a.c)((com.estrongs.a.a)localObject).getDecisionData(com.estrongs.a.a.c.class);
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