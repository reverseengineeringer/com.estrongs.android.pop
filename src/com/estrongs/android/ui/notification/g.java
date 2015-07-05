package com.estrongs.android.ui.notification;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import com.estrongs.a.a;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.util.am;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.ag;
import com.estrongs.fs.b.ao;
import com.estrongs.fs.b.bm;
import com.estrongs.fs.b.k;
import com.estrongs.fs.b.r;
import com.estrongs.fs.b.y;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

class g
  implements Runnable
{
  g(e parame, a parama) {}
  
  public void run()
  {
    for (;;)
    {
      Object localObject1;
      Object localObject6;
      label253:
      label281:
      Object localObject5;
      synchronized (b)
      {
        if (e.a(b) == null) {
          return;
        }
        if (((a instanceof com.estrongs.fs.b.ad)) || ((((a instanceof r)) || ((a instanceof ab)) || ((a instanceof bm)) || ((a instanceof com.estrongs.fs.b.p)) || ((a instanceof k)) || ((a instanceof ag)) || ((a instanceof y))) && (!com.estrongs.android.pop.ad.a(e.b(b)).ab())))
        {
          localObject1 = am.f();
          localObject6 = "";
          if ((a instanceof r))
          {
            if ((((r)a).c().size() != 1) || (!((com.estrongs.fs.h)((r)a).c().get(0)).getFileType().b())) {
              break label801;
            }
            localObject1 = a).n.getAbsolutePath();
            if (((String)localObject1).endsWith("/")) {
              localObject1 = (String)localObject1 + ((com.estrongs.fs.h)((r)a).c().get(0)).getName();
            }
          }
          else
          {
            if (a.getTaskResult().a != 13) {
              break label820;
            }
            ??? = e.b(b).getString(2131428047);
            if (!(a instanceof ao)) {
              break label916;
            }
            localObject5 = e.b(b).getString(2131427350) + " " + e.b(b).getString(2131428117);
            localObject6 = e.b(b).getString(2131427351) + " " + am.bL((String)localObject1) + " " + e.b(b).getString(2131428117);
            e.a(b).b((CharSequence)localObject5);
            e.a(b).c((CharSequence)localObject6);
            label419:
            if (??? != null) {
              e.a(b).c((CharSequence)???);
            }
            if (((a instanceof r)) && (a.getTaskResult().a != 16)) {
              synchronized (e.b())
              {
                e.b().put(Long.valueOf(a.getTaskId()), (r)a);
              }
            }
          }
        }
      }
      for (;;)
      {
        synchronized (e.c())
        {
          if (e.d() == null)
          {
            e.a(new h(this));
            localObject6 = new IntentFilter();
            ((IntentFilter)localObject6).addAction("remove_task_action");
            FexApplication.a().registerReceiver(e.d(), (IntentFilter)localObject6);
          }
          ??? = new Intent(e.b(b), ShowDialogActivity.class);
          ((Intent)???).setData(Uri.parse((String)localObject1));
          ((Intent)???).putExtra("task_id", a.getTaskId());
          ((Intent)???).putExtra("task_title", (String)localObject5);
          ((Intent)???).putExtra("resume_task", true);
          ((Intent)???).putExtra("task_source_names", a.processData.j);
          ((Intent)???).putExtra("count_info", b.a((r)a));
          ((Intent)???).putExtra("source", a.summary().optString("source"));
          ((Intent)???).putExtra("target", a.summary().optString("target"));
          e.a(b).b(true);
          e.a(b).a((Intent)???, true);
          localObject1 = new Intent();
          ((Intent)localObject1).setAction("remove_task_action");
          ((Intent)localObject1).putExtra("task_id", a.getTaskId());
          e.a(b).b((Intent)localObject1, false);
          e.a(b).a(2130837894);
          e.a(b).a();
          return;
          str1 = finally;
          throw str1;
          String str2 = str1 + "/";
          break;
          label801:
          str2 = a).n.getAbsolutePath();
          break label253;
          label820:
          if (a.getTaskResult().a == 14)
          {
            ??? = e.b(b).getString(2131428048);
            break label281;
          }
          if (a.getTaskResult().a == 12)
          {
            ??? = e.b(b).getString(2131428049);
            break label281;
          }
          if (a.getTaskResult().a != 16) {
            break label2432;
          }
          ??? = e.b(b).getString(2131427817);
          break label281;
          label916:
          if ((a instanceof k))
          {
            localObject5 = e.b(b).getString(2131428666) + " " + e.b(b).getString(2131428117);
            localObject6 = e.b(b).getString(2131427349) + " " + am.bL(str2) + " " + e.b(b).getString(2131428117);
            e.a(b).b((CharSequence)localObject5);
            e.a(b).c((CharSequence)localObject6);
            break label419;
          }
          if ((a instanceof r))
          {
            localObject5 = e.b(b).getString(2131427348) + " " + e.b(b).getString(2131428117);
            localObject6 = e.b(b).getString(2131427349) + " " + am.bL(str2) + " " + e.b(b).getString(2131428117);
            e.a(b).b((CharSequence)localObject5);
            e.a(b).c((CharSequence)localObject6);
            break label419;
          }
          if ((a instanceof ab))
          {
            if ((((ab)a).a().size() == 1) && (((com.estrongs.fs.h)((ab)a).a().get(0)).getFileType().b()))
            {
              ((com.estrongs.fs.h)((ab)a).a().get(0)).getName();
              str2 = am.bk(((com.estrongs.fs.h)((ab)a).a().get(0)).getAbsolutePath());
              localObject5 = e.b(b).getString(2131427347) + " " + am.bL(str2) + " " + e.b(b).getString(2131428117);
              e.a(b).b(e.b(b).getText(2131427347) + " " + e.b(b).getText(2131428117));
              e.a(b).c((CharSequence)localObject5);
              localObject5 = localObject6;
              break label419;
            }
            new StringBuilder().append(((com.estrongs.fs.h)((ab)a).a().get(0)).getName()).append("…").toString();
            continue;
          }
          if ((a instanceof com.estrongs.fs.b.p))
          {
            str2 = ((com.estrongs.fs.b.p)a).b();
            localObject5 = ((com.estrongs.fs.h)((com.estrongs.fs.b.p)a).a().get(0)).getName() + "…";
            localObject5 = e.b(b).getString(2131428089) + " " + (String)localObject5 + " " + e.b(b).getText(2131428117);
            e.a(b).b(e.b(b).getText(2131428089) + " " + e.b(b).getText(2131428117));
            e.a(b).c((CharSequence)localObject5);
            localObject5 = localObject6;
            break label419;
          }
          if ((a instanceof bm))
          {
            if ((((bm)a).d().size() == 1) && (((com.estrongs.fs.h)((bm)a).d().get(0)).getFileType().b()))
            {
              str2 = ((com.estrongs.fs.h)((bm)a).d().get(0)).getAbsolutePath();
              localObject5 = e.b(b).getString(2131427658) + " " + am.bL(str2) + " " + e.b(b).getString(2131428117);
              e.a(b).b((CharSequence)localObject5);
              e.a(b).c((CharSequence)localObject5);
              localObject5 = localObject6;
              break label419;
            }
            str2 = am.bk(((com.estrongs.fs.h)((bm)a).d().get(0)).getAbsolutePath());
            continue;
          }
          if ((a instanceof com.estrongs.fs.b.ad))
          {
            str2 = ((com.estrongs.fs.b.ad)a).b();
            localObject5 = e.b(b).getString(2131428108) + am.bL(str2);
            e.a(b).b(e.b(b).getText(2131427613));
            e.a(b).c((CharSequence)localObject5);
            localObject5 = localObject6;
            break label419;
          }
          if ((a instanceof ag))
          {
            str2 = am.bk(((com.estrongs.fs.h)((ag)a).b().get(0)).getAbsolutePath());
            localObject5 = ((com.estrongs.fs.h)((ag)a).b().get(0)).getName() + "…";
            localObject5 = e.b(b).getString(2131428478) + " " + (String)localObject5 + " " + e.b(b).getText(2131428117);
            e.a(b).b(e.b(b).getText(2131428478) + " " + e.b(b).getText(2131428117));
            e.a(b).c((CharSequence)localObject5);
            localObject5 = localObject6;
            break label419;
          }
          localObject5 = localObject6;
          if (!(a instanceof y)) {
            break label419;
          }
          str2 = am.bk(((com.estrongs.fs.h)((y)a).c().get(0)).getAbsolutePath());
          localObject5 = ((com.estrongs.fs.h)((y)a).c().get(0)).getName() + "…";
          localObject5 = e.b(b).getString(2131428479) + " " + (String)localObject5 + " " + e.b(b).getText(2131428117);
          e.a(b).b(e.b(b).getText(2131428479) + " " + e.b(b).getText(2131428117));
          e.a(b).c((CharSequence)localObject5);
          localObject5 = localObject6;
          break label419;
          localObject2 = finally;
          throw ((Throwable)localObject2);
        }
        e.a(b).e();
      }
      label2432:
      ??? = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.notification.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */