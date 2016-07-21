package com.estrongs.android.pop;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.a.a;
import com.estrongs.a.a.b;
import com.estrongs.a.a.d;
import com.estrongs.a.a.e;
import com.estrongs.a.a.f;
import com.estrongs.a.a.i;
import com.estrongs.a.a.j;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.dialog.dp;
import com.estrongs.android.util.ap;
import com.estrongs.fs.impl.adb.c;
import java.text.MessageFormat;

class n
  implements Runnable
{
  n(m paramm, d paramd, a parama) {}
  
  public void run()
  {
    Object localObject1;
    Object localObject2;
    Object localObject3;
    if (a.h == 1)
    {
      localObject1 = (com.estrongs.a.a.h)a;
      if ((c == null) || (c.getFileType() == null) || (d == null))
      {
        g = 3;
        b.setTaskResult(10000, new com.estrongs.a.q(MessageFormat.format(m.a(c).getString(2131231463), new Object[] { "" }), null));
        b.sendMessage(5, new Object[] { localObject1 });
        return;
      }
      if ((c.getFileType().a() ^ d.getFileType().a()))
      {
        g = 3;
        b.setTaskResult(16, new com.estrongs.a.q((String)m.a(c).getText(2131231900), null));
        b.sendMessage(5, new Object[] { localObject1 });
        return;
      }
      localObject2 = m.a(c, b, (com.estrongs.a.a.h)localObject1);
      localObject3 = ap.cc(a);
      if (b)
      {
        ((ci)localObject2).setTitle(m.a(c).getString(2131231909));
        ((ci)localObject2).setMessage(m.a(c).getString(2131231908) + "\n" + (String)localObject3);
      }
      for (;;)
      {
        ((ci)localObject2).show();
        return;
        ((ci)localObject2).setTitle(m.a(c).getString(2131231721));
        ((ci)localObject2).setMessage(m.a(c).getString(2131231763) + ", " + m.a(c).getString(2131231340) + "\n" + ap.d((String)localObject3));
      }
    }
    if (a.h == 3)
    {
      a.g = 3;
      a.f = true;
      b.sendMessage(5, new Object[] { a });
      return;
    }
    if (a.h == 4)
    {
      localObject1 = (i)a;
      new FlickrPhotoPrivacyDialog(m.a(c), new o(this), a).show();
      return;
    }
    if (a.h == 5)
    {
      localObject2 = new Intent(m.a(c), ShowDialogActivity.class);
      ((Intent)localObject2).setFlags(268435456);
      ((Intent)localObject2).putExtra("needAuth", true);
      ((Intent)localObject2).putExtra("task_id", b.getTaskId());
      localObject1 = (AlarmManager)m.a(c).getSystemService("alarm");
      localObject2 = PendingIntent.getActivity(m.a(c), 0, (Intent)localObject2, 134217728);
      ((AlarmManager)localObject1).set(0, System.currentTimeMillis() + 500L, (PendingIntent)localObject2);
      return;
    }
    if (a.h == 6)
    {
      localObject1 = (com.estrongs.a.a.k)a;
      new com.estrongs.android.d.q(m.a(c), a, new p(this, (com.estrongs.a.a.k)localObject1)).show();
      return;
    }
    if (a.h == 7)
    {
      localObject1 = (f)a;
      new q(this, m.a(c), true, (f)localObject1).show();
      return;
    }
    if (a.h == 8)
    {
      localObject1 = (e)a;
      new r(this, m.a(c), false, (e)localObject1).show();
      return;
    }
    if (a.h == 9)
    {
      localObject2 = new cv(m.a(c));
      ((cv)localObject2).a(2131231718);
      localObject3 = (j)a;
      View localView = com.estrongs.android.pop.esclasses.k.a(m.a(c)).inflate(2130903189, null);
      TextView localTextView = (TextView)localView.findViewById(2131624200);
      Activity localActivity = m.a(c);
      if (d == null) {}
      for (localObject1 = "";; localObject1 = d)
      {
        localTextView.setText(localActivity.getString(2131231793, new Object[] { localObject1, c }));
        ((ImageView)localView.findViewById(2131624051)).setImageResource(2130838384);
        ((cv)localObject2).a(localView);
        localObject1 = new s(this);
        ((cv)localObject2).b(m.a(c).getString(2131230720), (DialogInterface.OnClickListener)localObject1);
        ((cv)localObject2).c(m.a(c).getString(2131231265), new u(this));
        ((cv)localObject2).b(false);
        ((cv)localObject2).c();
        return;
      }
    }
    if (a.h == 10)
    {
      localObject2 = (b)a;
      localObject1 = m.a(c).getString(2131230906, new Object[] { a, ap.F(b) });
      localObject2 = c.a(m.a(c), c);
      if (localObject2 == null) {
        break label1137;
      }
      localObject1 = "\n" + (String)localObject2;
    }
    label1137:
    for (;;)
    {
      localObject2 = new cv(m.a(c));
      ((cv)localObject2).a(2131230969);
      ((cv)localObject2).b((CharSequence)localObject1);
      ((cv)localObject2).b(false);
      ((cv)localObject2).b(m.a(c).getString(2131231272), new v(this));
      ((cv)localObject2).c(m.a(c).getString(2131231265), new w(this));
      ((cv)localObject2).b(false);
      ((cv)localObject2).c();
      return;
      a.g = 3;
      a.f = true;
      b.sendMessage(5, new Object[] { a });
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */