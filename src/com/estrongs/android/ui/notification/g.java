package com.estrongs.android.ui.notification;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.a.a;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.util.ap;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.ag;
import com.estrongs.fs.b.aq;
import com.estrongs.fs.b.bo;
import com.estrongs.fs.b.k;
import com.estrongs.fs.b.p;
import com.estrongs.fs.b.r;
import com.estrongs.fs.b.y;
import com.estrongs.fs.h;
import com.estrongs.fs.w;
import java.util.List;

class g
  implements Runnable
{
  g(f paramf, a parama) {}
  
  public void run()
  {
    synchronized (b)
    {
      if (f.a(b) == null) {
        return;
      }
      f.a(b).a(false);
      if ((a instanceof k))
      {
        f.a(b).e();
        return;
      }
    }
    Object localObject2;
    label238:
    boolean bool1;
    if (((a instanceof com.estrongs.fs.b.ad)) || ((((a instanceof r)) || ((a instanceof ab)) || ((a instanceof bo)) || ((a instanceof p)) || ((a instanceof ag)) || ((a instanceof y))) && (!com.estrongs.android.pop.ad.a(f.b(b)).ac())))
    {
      localObject2 = ap.f();
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
      if ((a instanceof aq))
      {
        localObject3 = f.b(b).getString(2131230865);
        localObject5 = f.b(b).getString(2131231732, new Object[] { ap.cc((String)localObject2) });
        f.a(b).b(f.b(b).getText(2131232183));
        f.a(b).c((CharSequence)localObject5);
        localObject4 = localObject2;
        localObject2 = localObject5;
      }
      for (;;)
      {
        label371:
        f.a(b).a(2130838201);
        f.a(b).a();
        localObject5 = new Intent(f.b(b), ShowDialogActivity.class);
        ((Intent)localObject5).setData(Uri.parse((String)localObject4));
        ((Intent)localObject5).putExtra("title", (String)localObject3);
        ((Intent)localObject5).putExtra("message", (String)localObject2);
        ((Intent)localObject5).putExtra("openfileOrFolder", true);
        ((Intent)localObject5).putExtra("pathIsDir", bool1);
        f.a(b).b(true);
        f.a(b).a((Intent)localObject5, true);
        break;
        localObject2 = (String)localObject2 + "/";
        break label238;
        localObject2 = a).n.getAbsolutePath();
        bool1 = true;
        break label282;
        if ((a instanceof r))
        {
          localObject3 = f.b(b).getString(2131230838);
          localObject5 = f.b(b).getString(2131231285, new Object[] { ap.cc((String)localObject2) });
          f.a(b).b(f.b(b).getText(2131232172));
          f.a(b).c((CharSequence)localObject5);
          localObject4 = localObject2;
          localObject2 = localObject5;
        }
        else
        {
          if ((a instanceof ab))
          {
            localObject3 = f.b(b).getString(2131230845);
            if ((((ab)a).a().size() == 1) && (((h)((ab)a).a().get(0)).getFileType().b())) {}
            for (localObject2 = ((h)((ab)a).a().get(0)).getName();; localObject2 = ((h)((ab)a).a().get(0)).getName() + "…")
            {
              localObject4 = ap.bB(((h)((ab)a).a().get(0)).getAbsolutePath());
              localObject2 = f.b(b).getString(2131231316, new Object[] { localObject2 });
              f.a(b).b(f.b(b).getText(2131231899));
              f.a(b).c((CharSequence)localObject2);
              break;
            }
          }
          if (!(a instanceof p)) {
            break label988;
          }
          localObject3 = f.b(b).getString(2131230881);
          localObject4 = ((p)a).b();
          localObject2 = ((h)((p)a).a().get(0)).getName() + "…";
          localObject2 = f.b(b).getString(2131232277, new Object[] { localObject2 });
          f.a(b).b(f.b(b).getText(2131232276));
          f.a(b).c((CharSequence)localObject2);
        }
      }
      label988:
      if ((a instanceof bo))
      {
        localObject3 = f.b(b).getString(2131230890);
        if ((((bo)a).d().size() == 1) && (((h)((bo)a).d().get(0)).getFileType().b()))
        {
          localObject2 = ((h)((bo)a).d().get(0)).getAbsolutePath();
          bool1 = false;
        }
        for (;;)
        {
          localObject5 = f.b(b).getString(2131232479, new Object[] { ap.cc((String)localObject2) });
          f.a(b).b(f.b(b).getText(2131232193));
          f.a(b).c((CharSequence)localObject5);
          localObject4 = localObject2;
          localObject2 = localObject5;
          break;
          localObject2 = ap.bB(((h)((bo)a).d().get(0)).getAbsolutePath());
        }
      }
      if ((a instanceof com.estrongs.fs.b.ad))
      {
        localObject4 = f.b(b).getString(2131230847);
        localObject2 = ((com.estrongs.fs.b.ad)a).b();
        localObject3 = f.b(b).getString(2131231397, new Object[] { "" }) + "!\n" + f.b(b).getString(2131232398) + ap.cc((String)localObject2);
        f.a(b).b(f.b(b).getText(2131232518));
        f.a(b).c((CharSequence)localObject3);
      }
      label1746:
      for (;;)
      {
        try
        {
          boolean bool2 = ap.bl((String)localObject2);
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
          localObject3 = f.b(b).getString(2131230850);
          localObject4 = ap.bB(((h)((ag)a).b().get(0)).getAbsolutePath());
          new StringBuilder().append(((h)((ag)a).b().get(0)).getName()).append("…").toString();
          localObject2 = f.b(b).getString(2131230850).concat(f.b(b).getString(2131232195));
          f.a(b).b(f.b(b).getString(2131230850).concat(f.b(b).getString(2131232195)));
          f.a(b).c((CharSequence)localObject2);
          break label371;
        }
        if ((a instanceof y))
        {
          localObject3 = f.b(b).getString(2131230843);
          localObject4 = ap.bB(((h)((y)a).c().get(0)).getAbsolutePath());
          new StringBuilder().append(((h)((y)a).c().get(0)).getName()).append("…").toString();
          localObject2 = f.b(b).getString(2131230843).concat(f.b(b).getString(2131232195));
          f.a(b).b(f.b(b).getString(2131230843).concat(f.b(b).getString(2131232195)));
          f.a(b).c((CharSequence)localObject2);
          break label371;
          f.a(b).e();
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
 * Qualified Name:     com.estrongs.android.ui.notification.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */