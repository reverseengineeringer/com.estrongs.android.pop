package com.estrongs.android.ui.b;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.a.a.l;
import com.estrongs.a.a.p;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.netfs.utils.TypeUtils;
import com.estrongs.android.ui.dialog.jh;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.fs.b.ad;
import com.estrongs.fs.b.ar;
import com.estrongs.fs.util.j;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import org.json.JSONObject;

public class f
{
  public static final DateFormat c = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  public View a;
  public ImageView b;
  private Context d;
  private View e;
  private ImageView f;
  private ImageView g;
  private TextView h;
  private CheckBox i;
  private ViewGroup j;
  private ViewGroup k;
  private a l;
  private com.estrongs.a.a m;
  private at n;
  private Object o = new Object();
  private com.estrongs.android.ui.notification.f p = null;
  private com.estrongs.android.pop.m q = null;
  private boolean r = false;
  private p s = new i(this);
  
  public f(Context paramContext, com.estrongs.a.a parama)
  {
    d = paramContext;
    n = at.a(d);
    e = k.a(d).inflate(2130903437, null);
    f = ((ImageView)e.findViewById(2131625530));
    k = ((ViewGroup)e.findViewById(2131625532));
    j = ((ViewGroup)e.findViewById(2131625533));
    a = e.findViewById(2131625531);
    h = ((TextView)e.findViewById(2131625540));
    g = ((ImageView)e.findViewById(2131625539));
    i = ((CheckBox)e.findViewById(2131624070));
    ((TextView)e.findViewById(2131624200)).setTextColor(at.a(d).i());
    b = ((ImageView)e.findViewById(2131624581));
    q = new com.estrongs.android.pop.m((Activity)d);
    l = new g(this, (Activity)d, j);
    if (l.f != null) {
      l.f.setTextColor(n.c(2131558621));
    }
    if (l.d != null) {
      l.d.setTextColor(at.a(d).i());
    }
    if (l.e != null) {
      l.e.setTextColor(n.c(2131558621));
    }
    if (l.g != null) {
      l.g.setTextColor(n.c(2131558621));
    }
    a(parama);
  }
  
  public com.estrongs.a.a a()
  {
    return m;
  }
  
  protected void a(int paramInt)
  {
    l.d();
    f.setImageDrawable(com.estrongs.android.h.f.a(String.valueOf(TypeUtils.getFileType(m.summary().optString("title")))));
    if ((m instanceof ar))
    {
      l.c(d.getString(2131231387));
      l.e.setText(d.getString(2131231387));
      a.setVisibility(4);
      switch (paramInt)
      {
      }
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            Object localObject = a;
            if (r) {}
            for (int i1 = 4;; i1 = 0)
            {
              ((View)localObject).setVisibility(i1);
              l.c(null);
              break;
            }
            k.setVisibility(0);
            j.setVisibility(8);
            localObject = (TextView)k.findViewById(2131624200);
            TextView localTextView1 = (TextView)k.findViewById(2131624457);
            TextView localTextView2 = (TextView)k.findViewById(2131625357);
            ((TextView)localObject).setText(m.summary().optString("title"));
            String str = m.summary().optString("target");
            if ((ap.bl(str)) && (!com.estrongs.fs.impl.local.i.a(str)))
            {
              ((TextView)localObject).setTextColor(n.c(2131558458));
              ((TextView)localObject).setText(((TextView)localObject).getText() + "  (" + d.getString(2131231316, new Object[] { "" }).replaceAll("\"", "").trim() + ")");
            }
            for (;;)
            {
              localTextView1.setText(j.c(m.summary().optLong("size")));
              localTextView2.setText(c.format(new Date(m.summary().optLong("end_time"))));
              g.setImageResource(2130838574);
              h.setText(d.getString(2131230868));
              if (!r) {
                break;
              }
              a.setVisibility(4);
              return;
              ((TextView)localObject).setTextColor(n.i());
            }
            a.setVisibility(0);
            return;
            k.setVisibility(8);
            j.setVisibility(0);
          } while (!(m instanceof ad));
          g.setImageResource(2130838578);
          h.setText(d.getString(2131230896));
        } while (paramInt != 5);
        l.c.a(m, m.processData);
        l.c(d.getString(2131232245));
        l.e(m.processData.e);
        l.f(m.processData.f);
      } while (m.processData.f != 0L);
      l.e();
      l.b(m.summary().optString("title"));
      return;
      k.setVisibility(8);
      j.setVisibility(0);
      l.b(m.summary().optString("title"));
    } while (!(m instanceof ad));
    l.c(null);
    g.setImageResource(2130838577);
    h.setText(d.getString(2131230873));
  }
  
  public void a(com.estrongs.a.a parama)
  {
    com.estrongs.a.a locala = m;
    if (locala != null)
    {
      locala.removeTaskStatusChangeListener(s);
      locala.removeProgressListener(l.c);
    }
    l.b(parama.summary().optString("title"));
    int i1;
    if ((parama.getTaskStatus() != 4) && (processData != null))
    {
      if (processData.e > 0L)
      {
        l.e(processData.e);
        l.f(processData.f);
      }
    }
    else
    {
      parama.addProgressListener(l.c);
      parama.addTaskStatusChangeListener(s);
      if ((parama instanceof ad)) {
        parama.setTaskDecisionListener(q);
      }
      if ((parama instanceof ar))
      {
        i1 = parama.getTaskStatus();
        if (i1 != 1) {
          break label325;
        }
        parama.execute();
      }
    }
    for (;;)
    {
      f.setImageDrawable(com.estrongs.android.h.f.a(String.valueOf(TypeUtils.getFileType(parama.summary().optString("title")))));
      m = parama;
      a(parama.getTaskStatus());
      if ((parama.getTaskStatus() == 2) || (parama.getTaskStatus() == 3))
      {
        p = ((com.estrongs.android.ui.notification.f)jh.e.get(Long.valueOf(parama.getTaskId())));
        if (p == null)
        {
          if (notificationId > 0) {
            ((NotificationManager)d.getSystemService("notification")).cancel(notificationId);
          }
          p = new h(this, (Activity)d, d.getString(2131230847), parama);
          jh.e.put(Long.valueOf(parama.getTaskId()), p);
        }
      }
      return;
      l.c();
      break;
      label325:
      if (i1 == 3) {
        parama.resume();
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    i.setChecked(paramBoolean);
    if (paramBoolean)
    {
      e.setBackgroundDrawable(at.a(d).a(2130838143));
      return;
    }
    e.setBackgroundDrawable(null);
  }
  
  public View b()
  {
    return e;
  }
  
  public void b(boolean paramBoolean)
  {
    r = paramBoolean;
    if (r)
    {
      i.setVisibility(0);
      b.setVisibility(8);
      a.setVisibility(4);
      return;
    }
    i.setVisibility(4);
    b.setVisibility(0);
  }
  
  public void c()
  {
    l.f();
    a(false);
    b(false);
    synchronized (o)
    {
      if (m != null)
      {
        m.removeProgressListener(l.c);
        m.removeTaskStatusChangeListener(s);
        m = null;
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */