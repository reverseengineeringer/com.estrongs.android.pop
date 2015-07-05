package com.estrongs.android.ui.c.a;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.theme.al;
import com.estrongs.fs.util.j;

public class f
  extends a
{
  private ImageView c;
  private TextView d;
  private ProgressBar e;
  private TextView f;
  private TextView g;
  private View h;
  private String i;
  private int j;
  private String k;
  private long l;
  private long m;
  private View.OnClickListener n;
  private boolean o;
  private int p = -1;
  
  public f(FileExplorerActivity paramFileExplorerActivity)
  {
    super(paramFileExplorerActivity);
  }
  
  public String a()
  {
    return i;
  }
  
  public void a(int paramInt)
  {
    a(paramInt, false);
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    j = paramInt;
    if (c != null) {
      c.setImageResource(paramInt);
    }
    o = paramBoolean;
    if ((c instanceof ESImageView))
    {
      if (o)
      {
        Drawable localDrawable = a.getResources().getDrawable(2130837927);
        ((ESImageView)c).a(localDrawable, 0.5F);
        c.invalidate();
      }
    }
    else {
      return;
    }
    ((ESImageView)c).a(null);
    c.invalidate();
  }
  
  public void a(long paramLong1, long paramLong2)
  {
    l = paramLong1;
    m = paramLong2;
    if ((f != null) && (g != null))
    {
      if ((paramLong1 < 0L) || (paramLong2 < 0L))
      {
        f.setText("0");
        g.setText("0");
      }
    }
    else {
      return;
    }
    if (paramLong2 > 2147483647L)
    {
      f.setText(j.c(paramLong1));
      g.setText(j.c(paramLong2));
      return;
    }
    f.setText(j.c(paramLong1));
    g.setText(j.c(paramLong2));
  }
  
  public void a(View.OnClickListener paramOnClickListener)
  {
    n = paramOnClickListener;
  }
  
  public void a(String paramString)
  {
    k = paramString;
  }
  
  public void b(long paramLong1, long paramLong2)
  {
    l = paramLong1;
    m = paramLong2;
    if (e != null)
    {
      if ((paramLong1 < 0L) || (paramLong2 < 0L))
      {
        e.setMax(100);
        e.setProgress(0);
      }
    }
    else {
      return;
    }
    if (paramLong2 > 2147483647L)
    {
      int i1 = (int)(paramLong1 / 10000L);
      int i2 = (int)(paramLong2 / 10000L);
      e.setMax(i2);
      e.setProgress(i1);
      return;
    }
    e.setMax((int)paramLong2);
    e.setProgress((int)paramLong1);
  }
  
  protected void b(View paramView)
  {
    h = paramView;
    c = ((ImageView)b.findViewById(2131361853));
    d = ((TextView)b.findViewById(2131361808));
    d.setTextColor(al.a(a).i());
    e = ((ProgressBar)b.findViewById(2131361935));
    e.setProgressDrawable(a.getResources().getDrawable(2130837986));
    f = ((TextView)b.findViewById(2131361981));
    g = ((TextView)b.findViewById(2131361982));
    int i1 = h.getPaddingRight();
    int i2 = h.getPaddingLeft();
    h.setBackgroundResource(2130837560);
    h.setPadding(i2, h.getPaddingTop(), i1, h.getPaddingBottom());
    c.setImageResource(j);
    if (o)
    {
      paramView = a.getResources().getDrawable(2130837927);
      ((ESImageView)c).a(paramView, 0.5F);
    }
    d.setText(k);
    if ((l < 0L) || (m < 0L))
    {
      f.setText("0");
      g.setText("0");
      if ((l >= 0L) && (m >= 0L)) {
        break label408;
      }
      e.setMax(100);
      e.setProgress(0);
    }
    for (;;)
    {
      h.setOnClickListener(n);
      if ((c instanceof ESImageView)) {
        ((ESImageView)c).a(new g(this));
      }
      return;
      if (m > 2147483647L)
      {
        f.setText(j.c(l));
        g.setText(j.c(m));
        break;
      }
      f.setText(j.c(l));
      g.setText(j.c(m));
      break;
      label408:
      if (m > 2147483647L)
      {
        i1 = (int)(l / 10000L);
        i2 = (int)(m / 10000L);
        e.setMax(i2);
        e.setProgress(i1);
      }
      else
      {
        e.setMax((int)m);
        e.setProgress((int)l);
      }
    }
  }
  
  public void b(String paramString)
  {
    i = paramString;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */