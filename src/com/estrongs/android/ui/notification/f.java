package com.estrongs.android.ui.notification;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.a.a;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.util.am;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.ag;
import com.estrongs.fs.b.ao;
import com.estrongs.fs.b.bm;
import com.estrongs.fs.b.k;
import com.estrongs.fs.b.p;
import com.estrongs.fs.b.r;
import com.estrongs.fs.b.y;
import com.estrongs.fs.h;
import com.estrongs.fs.m;
import java.util.List;

class f
  implements Runnable
{
  f(e parame, a parama) {}
  
  public void run()
  {
    synchronized (b)
    {
      if (e.a(b) == null) {
        return;
      }
      e.a(b).a(false);
      if ((a instanceof k))
      {
        e.a(b).e();
        return;
      }
    }
    Object localObject2;
    label238:
    boolean bool1;
    if (((a instanceof com.estrongs.fs.b.ad)) || ((((a instanceof r)) || ((a instanceof ab)) || ((a instanceof bm)) || ((a instanceof p)) || ((a instanceof ag)) || ((a instanceof y))) && (!com.estrongs.android.pop.ad.a(e.b(b)).ab())))
    {
      localObject2 = am.f();
      if (!(a instanceof r)) {
        break label1749;
      }
      if ((((r)a).c().size() == 1) && (((h)((r)a).c().get(0)).getFileType().b()))
      {
        localObject2 = a).n.getAbsolutePath();
        if (((String)localObject2).endsWith("/"))
        {
          localObject2 = (String)localObject2 + ((h)((r)a).c().get(0)).getName();
          bool1 = false;
        }
      }
    }
    for (;;)
    {
      label282:
      Object localObject3;
      Object localObject5;
      Object localObject4;
      if ((a instanceof ao))
      {
        localObject3 = e.b(b).getString(2131427350);
        localObject5 = e.b(b).getString(2131428186, new Object[] { am.bL((String)localObject2) });
        e.a(b).b(e.b(b).getText(2131427466));
        e.a(b).c((CharSequence)localObject5);
        localObject4 = localObject2;
        localObject2 = localObject5;
      }
      for (;;)
      {
        label371:
        e.a(b).a(2130837891);
        e.a(b).a();
        localObject5 = new Intent(e.b(b), ShowDialogActivity.class);
        ((Intent)localObject5).setData(Uri.parse((String)localObject4));
        ((Intent)localObject5).putExtra("title", (String)localObject3);
        ((Intent)localObject5).putExtra("message", (String)localObject2);
        ((Intent)localObject5).putExtra("openfileOrFolder", true);
        ((Intent)localObject5).putExtra("pathIsDir", bool1);
        e.a(b).b(true);
        e.a(b).a((Intent)localObject5, true);
        break;
        localObject2 = (String)localObject2 + "/";
        break label238;
        localObject2 = a).n.getAbsolutePath();
        bool1 = true;
        break label282;
        if ((a instanceof r))
        {
          localObject3 = e.b(b).getString(2131427348);
          localObject5 = e.b(b).getString(2131428185, new Object[] { am.bL((String)localObject2) });
          e.a(b).b(e.b(b).getText(2131427467));
          e.a(b).c((CharSequence)localObject5);
          localObject4 = localObject2;
          localObject2 = localObject5;
        }
        else
        {
          if ((a instanceof ab))
          {
            localObject3 = e.b(b).getString(2131427347);
            if ((((ab)a).a().size() == 1) && (((h)((ab)a).a().get(0)).getFileType().b())) {}
            for (localObject2 = ((h)((ab)a).a().get(0)).getName();; localObject2 = ((h)((ab)a).a().get(0)).getName() + "…")
            {
              localObject4 = am.bk(((h)((ab)a).a().get(0)).getAbsolutePath());
              localObject2 = e.b(b).getString(2131428280, new Object[] { localObject2 });
              e.a(b).b(e.b(b).getText(2131427768));
              e.a(b).c((CharSequence)localObject2);
              break;
            }
          }
          if (!(a instanceof p)) {
            break label988;
          }
          localObject3 = e.b(b).getString(2131427355);
          localObject4 = ((p)a).b();
          localObject2 = ((h)((p)a).a().get(0)).getName() + "…";
          localObject2 = e.b(b).getString(2131428307, new Object[] { localObject2 });
          e.a(b).b(e.b(b).getText(2131427780));
          e.a(b).c((CharSequence)localObject2);
        }
      }
      label988:
      if ((a instanceof bm))
      {
        localObject3 = e.b(b).getString(2131427362);
        if ((((bm)a).d().size() == 1) && (((h)((bm)a).d().get(0)).getFileType().b()))
        {
          localObject2 = ((h)((bm)a).d().get(0)).getAbsolutePath();
          bool1 = false;
        }
        for (;;)
        {
          localObject5 = e.b(b).getString(2131428187, new Object[] { am.bL((String)localObject2) });
          e.a(b).b(e.b(b).getText(2131427468));
          e.a(b).c((CharSequence)localObject5);
          localObject4 = localObject2;
          localObject2 = localObject5;
          break;
          localObject2 = am.bk(((h)((bm)a).d().get(0)).getAbsolutePath());
        }
      }
      if ((a instanceof com.estrongs.fs.b.ad))
      {
        localObject4 = e.b(b).getString(2131427359);
        localObject2 = ((com.estrongs.fs.b.ad)a).b();
        localObject3 = e.b(b).getString(2131427723, new Object[] { "" }) + "!\n" + e.b(b).getString(2131428108) + am.bL((String)localObject2);
        e.a(b).b(e.b(b).getText(2131427627));
        e.a(b).c((CharSequence)localObject3);
      }
      label1746:
      for (;;)
      {
        try
        {
          boolean bool2 = am.ba((String)localObject2);
          if (!bool2) {
            break label1746;
          }
          bool1 = false;
          localObject5 = localObject2;
          localObject2 = localObject3;
          localObject3 = localObject4;
          localObject4 = localObject5;
        }
        catch (Exception localException)
        {
          localObject6 = localObject2;
          localObject2 = localObject3;
          localObject3 = localObject4;
          localObject4 = localObject6;
        }
        break label371;
        if ((a instanceof ag))
        {
          localObject3 = e.b(b).getString(2131428478);
          localObject4 = am.bk(((h)((ag)a).b().get(0)).getAbsolutePath());
          new StringBuilder().append(((h)((ag)a).b().get(0)).getName()).append("…").toString();
          localObject2 = e.b(b).getString(2131428478).concat(e.b(b).getString(2131428213));
          e.a(b).b(e.b(b).getString(2131428478).concat(e.b(b).getString(2131428213)));
          e.a(b).c((CharSequence)localObject2);
          break label371;
        }
        if ((a instanceof y))
        {
          localObject3 = e.b(b).getString(2131428479);
          localObject4 = am.bk(((h)((y)a).c().get(0)).getAbsolutePath());
          new StringBuilder().append(((h)((y)a).c().get(0)).getName()).append("…").toString();
          localObject2 = e.b(b).getString(2131428479).concat(e.b(b).getString(2131428213));
          e.a(b).b(e.b(b).getString(2131428479).concat(e.b(b).getString(2131428213)));
          e.a(b).c((CharSequence)localObject2);
          break label371;
          e.a(b).e();
          break;
        }
        Object localObject6 = "";
        localObject3 = "";
        localObject4 = localObject2;
        localObject2 = localObject6;
        break label371;
      }
      label1749:
      bool1 = true;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.notification.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */