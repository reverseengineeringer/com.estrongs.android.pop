package com.estrongs.android.ui.notification;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import com.estrongs.a.a;
import com.estrongs.a.a.m;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.util.ap;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.ag;
import com.estrongs.fs.b.aq;
import com.estrongs.fs.b.bo;
import com.estrongs.fs.b.k;
import com.estrongs.fs.b.r;
import com.estrongs.fs.b.y;
import com.estrongs.fs.w;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

class h
  implements Runnable
{
  h(f paramf, a parama) {}
  
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
        if (f.a(b) == null) {
          return;
        }
        if (((a instanceof com.estrongs.fs.b.ad)) || ((((a instanceof r)) || ((a instanceof ab)) || ((a instanceof bo)) || ((a instanceof com.estrongs.fs.b.p)) || ((a instanceof k)) || ((a instanceof ag)) || ((a instanceof y))) && (!com.estrongs.android.pop.ad.a(f.b(b)).ac())))
        {
          localObject1 = ap.f();
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
            ??? = f.b(b).getString(2131231284);
            if (!(a instanceof aq)) {
              break label916;
            }
            localObject5 = f.b(b).getString(2131230865) + " " + f.b(b).getString(2131232400);
            localObject6 = f.b(b).getString(2131230866) + " " + ap.cc((String)localObject1) + " " + f.b(b).getString(2131232400);
            f.a(b).b((CharSequence)localObject5);
            f.a(b).c((CharSequence)localObject6);
            label419:
            if (??? != null) {
              f.a(b).c((CharSequence)???);
            }
            if (((a instanceof r)) && (a.getTaskResult().a != 16)) {
              synchronized (f.b())
              {
                f.b().put(Long.valueOf(a.getTaskId()), (r)a);
              }
            }
          }
        }
      }
      for (;;)
      {
        synchronized (f.c())
        {
          if (f.d() == null)
          {
            f.a(new i(this));
            localObject6 = new IntentFilter();
            ((IntentFilter)localObject6).addAction("remove_task_action");
            FexApplication.a().registerReceiver(f.d(), (IntentFilter)localObject6);
          }
          ??? = new Intent(f.b(b), ShowDialogActivity.class);
          ((Intent)???).setData(Uri.parse((String)localObject1));
          ((Intent)???).putExtra("task_id", a.getTaskId());
          ((Intent)???).putExtra("task_title", (String)localObject5);
          ((Intent)???).putExtra("resume_task", true);
          ((Intent)???).putExtra("task_source_names", a.processData.j);
          ((Intent)???).putExtra("count_info", b.a((r)a));
          ((Intent)???).putExtra("source", a.summary().optString("source"));
          ((Intent)???).putExtra("target", a.summary().optString("target"));
          f.a(b).b(true);
          f.a(b).a((Intent)???, true);
          localObject1 = new Intent();
          ((Intent)localObject1).setAction("remove_task_action");
          ((Intent)localObject1).putExtra("task_id", a.getTaskId());
          f.a(b).b((Intent)localObject1, false);
          f.a(b).a(2130838204);
          f.a(b).a();
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
            ??? = f.b(b).getString(2131231731);
            break label281;
          }
          if (a.getTaskResult().a == 12)
          {
            ??? = f.b(b).getString(2131231845);
            break label281;
          }
          if (a.getTaskResult().a != 16) {
            break label2432;
          }
          ??? = f.b(b).getString(2131231900);
          break label281;
          label916:
          if ((a instanceof k))
          {
            localObject5 = f.b(b).getString(2131231031) + " " + f.b(b).getString(2131232400);
            localObject6 = f.b(b).getString(2131230840) + " " + ap.cc(str2) + " " + f.b(b).getString(2131232400);
            f.a(b).b((CharSequence)localObject5);
            f.a(b).c((CharSequence)localObject6);
            break label419;
          }
          if ((a instanceof r))
          {
            localObject5 = f.b(b).getString(2131230838) + " " + f.b(b).getString(2131232400);
            localObject6 = f.b(b).getString(2131230840) + " " + ap.cc(str2) + " " + f.b(b).getString(2131232400);
            f.a(b).b((CharSequence)localObject5);
            f.a(b).c((CharSequence)localObject6);
            break label419;
          }
          if ((a instanceof ab))
          {
            if ((((ab)a).a().size() == 1) && (((com.estrongs.fs.h)((ab)a).a().get(0)).getFileType().b()))
            {
              ((com.estrongs.fs.h)((ab)a).a().get(0)).getName();
              str2 = ap.bB(((com.estrongs.fs.h)((ab)a).a().get(0)).getAbsolutePath());
              localObject5 = f.b(b).getString(2131230845) + " " + ap.cc(str2) + " " + f.b(b).getString(2131232400);
              f.a(b).b(f.b(b).getText(2131230845) + " " + f.b(b).getText(2131232400));
              f.a(b).c((CharSequence)localObject5);
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
            localObject5 = f.b(b).getString(2131231066) + " " + (String)localObject5 + " " + f.b(b).getText(2131232400);
            f.a(b).b(f.b(b).getText(2131231066) + " " + f.b(b).getText(2131232400));
            f.a(b).c((CharSequence)localObject5);
            localObject5 = localObject6;
            break label419;
          }
          if ((a instanceof bo))
          {
            if ((((bo)a).d().size() == 1) && (((com.estrongs.fs.h)((bo)a).d().get(0)).getFileType().b()))
            {
              str2 = ((com.estrongs.fs.h)((bo)a).d().get(0)).getAbsolutePath();
              localObject5 = f.b(b).getString(2131231866) + " " + ap.cc(str2) + " " + f.b(b).getString(2131232400);
              f.a(b).b((CharSequence)localObject5);
              f.a(b).c((CharSequence)localObject5);
              localObject5 = localObject6;
              break label419;
            }
            str2 = ap.bB(((com.estrongs.fs.h)((bo)a).d().get(0)).getAbsolutePath());
            continue;
          }
          if ((a instanceof com.estrongs.fs.b.ad))
          {
            str2 = ((com.estrongs.fs.b.ad)a).b();
            localObject5 = f.b(b).getString(2131232398) + ap.cc(str2);
            f.a(b).b(f.b(b).getText(2131232245));
            f.a(b).c((CharSequence)localObject5);
            localObject5 = localObject6;
            break label419;
          }
          if ((a instanceof ag))
          {
            str2 = ap.bB(((com.estrongs.fs.h)((ag)a).b().get(0)).getAbsolutePath());
            localObject5 = ((com.estrongs.fs.h)((ag)a).b().get(0)).getName() + "…";
            localObject5 = f.b(b).getString(2131230850) + " " + (String)localObject5 + " " + f.b(b).getText(2131232400);
            f.a(b).b(f.b(b).getText(2131230850) + " " + f.b(b).getText(2131232400));
            f.a(b).c((CharSequence)localObject5);
            localObject5 = localObject6;
            break label419;
          }
          localObject5 = localObject6;
          if (!(a instanceof y)) {
            break label419;
          }
          str2 = ap.bB(((com.estrongs.fs.h)((y)a).c().get(0)).getAbsolutePath());
          localObject5 = ((com.estrongs.fs.h)((y)a).c().get(0)).getName() + "…";
          localObject5 = f.b(b).getString(2131230843) + " " + (String)localObject5 + " " + f.b(b).getText(2131232400);
          f.a(b).b(f.b(b).getText(2131230843) + " " + f.b(b).getText(2131232400));
          f.a(b).c((CharSequence)localObject5);
          localObject5 = localObject6;
          break label419;
          localObject2 = finally;
          throw ((Throwable)localObject2);
        }
        f.a(b).e();
      }
      label2432:
      ??? = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.notification.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */