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
import com.estrongs.android.pop.netfs.utils.TypeUtils;
import com.estrongs.android.ui.dialog.ix;
import com.estrongs.android.ui.notification.e;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.am;
import com.estrongs.fs.b.ad;
import com.estrongs.fs.b.ap;
import com.estrongs.fs.util.j;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import org.json.JSONObject;

public class f
{
  public static final DateFormat a = new SimpleDateFormat();
  private Context b;
  private View c;
  private ImageView d;
  private ImageView e;
  private CheckBox f;
  private ViewGroup g;
  private ViewGroup h;
  private a i;
  private com.estrongs.a.a j;
  private al k;
  private Object l = new Object();
  private e m = null;
  private com.estrongs.android.pop.m n = null;
  private p o = new i(this);
  
  public f(Context paramContext, com.estrongs.a.a parama)
  {
    b = paramContext;
    k = al.a(b);
    c = com.estrongs.android.pop.esclasses.g.a(b).inflate(2130903257, null);
    d = ((ImageView)c.findViewById(2131362743));
    h = ((ViewGroup)c.findViewById(2131362744));
    g = ((ViewGroup)c.findViewById(2131362745));
    e = ((ImageView)g.findViewById(2131362746));
    f = ((CheckBox)c.findViewById(2131361954));
    ((TextView)c.findViewById(2131361822)).setTextColor(al.a(b).i());
    n = new com.estrongs.android.pop.m((Activity)b);
    i = new g(this, (Activity)b, g);
    if (i.f != null) {
      i.f.setTextColor(k.d(2131230762));
    }
    if (i.d != null) {
      i.d.setTextColor(al.a(b).i());
    }
    if (i.e != null) {
      i.e.setTextColor(k.d(2131230762));
    }
    if (i.h != null) {
      i.h.setTextColor(k.d(2131230762));
    }
    if (i.g != null) {
      i.g.setTextColor(k.d(2131230762));
    }
    a(parama);
  }
  
  public com.estrongs.a.a a()
  {
    return j;
  }
  
  protected void a(int paramInt)
  {
    i.d();
    d.setImageDrawable(com.estrongs.android.d.f.a(String.valueOf(TypeUtils.getFileType(j.summary().optString("title")))));
    if ((j instanceof ap))
    {
      i.c(b.getString(2131428549));
      i.e.setText(b.getString(2131428549));
      e.setImageDrawable(null);
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
            i.c(null);
            break;
            h.setVisibility(0);
            g.setVisibility(8);
            TextView localTextView1 = (TextView)h.findViewById(2131361822);
            TextView localTextView2 = (TextView)h.findViewById(2131361950);
            TextView localTextView3 = (TextView)h.findViewById(2131362607);
            localTextView1.setText(j.summary().optString("title"));
            String str = j.summary().optString("target");
            if ((am.ba(str)) && (!com.estrongs.fs.impl.local.h.a(str)))
            {
              localTextView1.setTextColor(k.d(2131230756));
              localTextView1.setText(localTextView1.getText() + "  (" + b.getString(2131428280, new Object[] { "" }).replaceAll("\"", "").trim() + ")");
            }
            for (;;)
            {
              localTextView2.setText(j.c(j.summary().optLong("size")));
              localTextView3.setText(a.format(new Date(j.summary().optLong("end_time"))));
              return;
              localTextView1.setTextColor(k.i());
            }
            h.setVisibility(8);
            g.setVisibility(0);
          } while (!(j instanceof ad));
          e.setImageResource(2130837532);
        } while (paramInt != 5);
        i.c.a(j, j.processData);
        i.c(b.getString(2131427613));
        i.e(j.processData.e);
        i.f(j.processData.f);
      } while (j.processData.f != 0L);
      i.e();
      i.b(j.summary().optString("title"));
      return;
      h.setVisibility(8);
      g.setVisibility(0);
      i.b(j.summary().optString("title"));
    } while (!(j instanceof ad));
    i.c(null);
    e.setImageResource(2130837531);
  }
  
  public void a(com.estrongs.a.a parama)
  {
    com.estrongs.a.a locala = j;
    if (locala != null)
    {
      locala.removeTaskStatusChangeListener(o);
      locala.removeProgressListener(i.c);
    }
    i.b(parama.summary().optString("title"));
    int i1;
    if ((parama.getTaskStatus() != 4) && (processData != null))
    {
      if (processData.e > 0L)
      {
        i.e(processData.e);
        i.f(processData.f);
      }
    }
    else
    {
      parama.addProgressListener(i.c);
      parama.addTaskStatusChangeListener(o);
      if ((parama instanceof ad)) {
        parama.setTaskDecisionListener(n);
      }
      if ((parama instanceof ap))
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
      d.setImageDrawable(com.estrongs.android.d.f.a(String.valueOf(TypeUtils.getFileType(parama.summary().optString("title")))));
      j = parama;
      a(parama.getTaskStatus());
      if ((parama.getTaskStatus() == 2) || (parama.getTaskStatus() == 3))
      {
        m = ((e)ix.e.get(Long.valueOf(parama.getTaskId())));
        if (m == null)
        {
          if (notificationId > 0) {
            ((NotificationManager)b.getSystemService("notification")).cancel(notificationId);
          }
          m = new h(this, (Activity)b, b.getString(2131427359), parama);
          ix.e.put(Long.valueOf(parama.getTaskId()), m);
        }
      }
      return;
      i.c();
      break;
      label325:
      if (i1 == 3) {
        parama.resume();
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    f.setChecked(paramBoolean);
    if (paramBoolean)
    {
      c.setBackgroundDrawable(al.a(b).a(2130837806));
      return;
    }
    c.setBackgroundDrawable(null);
  }
  
  public View b()
  {
    return c;
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      f.setVisibility(0);
      return;
    }
    f.setVisibility(4);
  }
  
  public void c()
  {
    i.f();
    a(false);
    b(false);
    synchronized (l)
    {
      if (j != null)
      {
        j.removeProgressListener(i.c);
        j.removeTaskStatusChangeListener(o);
        j = null;
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