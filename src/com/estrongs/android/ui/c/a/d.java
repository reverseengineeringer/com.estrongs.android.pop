package com.estrongs.android.ui.c.a;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.HomeSdcardProgressView;
import com.estrongs.android.util.ap;
import com.estrongs.fs.util.j;

public class d
  extends a
{
  private TextView c;
  private HomeSdcardProgressView d;
  private TextView e;
  private TextView f;
  private TextView g;
  private String h;
  private String i;
  private long j;
  private long k;
  private View.OnClickListener l;
  private boolean m = false;
  private int n = 0;
  
  public d(FileExplorerActivity paramFileExplorerActivity)
  {
    super(paramFileExplorerActivity);
  }
  
  public String a()
  {
    return h;
  }
  
  public void a(long paramLong1, long paramLong2)
  {
    j = paramLong1;
    k = paramLong2;
    if ((e != null) && (f != null))
    {
      if ((ap.aH(h)) && (paramLong2 <= 0L))
      {
        e.setText("");
        f.setText("");
        g.setVisibility(4);
      }
    }
    else {
      return;
    }
    g.setVisibility(0);
    if ((paramLong1 < 0L) || (paramLong2 < 0L))
    {
      e.setText("0");
      f.setText("0");
      return;
    }
    if (paramLong2 > 2147483647L)
    {
      e.setText(j.c(paramLong1));
      f.setText(j.c(paramLong2));
      return;
    }
    e.setText(j.c(paramLong1));
    f.setText(j.c(paramLong2));
  }
  
  public void a(View.OnClickListener paramOnClickListener)
  {
    l = paramOnClickListener;
  }
  
  public void a(String paramString)
  {
    i = paramString;
  }
  
  public void b(long paramLong1, long paramLong2)
  {
    j = paramLong1;
    k = paramLong2;
    if (d != null) {
      d.a(paramLong1, paramLong2);
    }
  }
  
  protected void b(View paramView)
  {
    c = ((TextView)b.findViewById(2131624135));
    c.setTextColor(at.a(a).i());
    d = ((HomeSdcardProgressView)b.findViewById(2131624493));
    paramView = b.b();
    if (h.equals(paramView))
    {
      d.setProgressColor(a.getResources().getColor(2131558611));
      if ((!ap.bl(h)) || (ap.bL(h))) {
        break label278;
      }
      b.setBackgroundResource(2130837977);
      label112:
      b.setFocusable(true);
      e = ((TextView)b.findViewById(2131624494));
      f = ((TextView)b.findViewById(2131624496));
      g = ((TextView)b.findViewById(2131624495));
      c.setText(i);
      if ((j >= 0L) && (k >= 0L)) {
        break label290;
      }
      e.setText("0");
      f.setText("0");
      label215:
      if ((j >= 0L) && (k >= 0L)) {
        break label363;
      }
      d.a(0L, 100L);
    }
    for (;;)
    {
      b.setOnClickListener(l);
      return;
      d.setProgressColor(a.getResources().getColor(2131558610));
      break;
      label278:
      b.setBackgroundResource(2130837689);
      break label112;
      label290:
      if (k > 2147483647L)
      {
        e.setText(j.c(j));
        f.setText(j.c(k));
        break label215;
      }
      e.setText(j.c(j));
      f.setText(j.c(k));
      break label215;
      label363:
      d.a(j, k);
    }
  }
  
  public void b(String paramString)
  {
    h = paramString;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */