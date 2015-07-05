package com.estrongs.android.pop.app.diskusage;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.util.bd;
import com.estrongs.fs.b.an;
import com.estrongs.fs.util.j;

public class a
  extends cg
{
  String a = "";
  int[] b = { 39936, -13524051, -3908929, -6684159, -8210621, -196864 };
  int[] c = { 2131362129, 2131362131, 2131362133, 2131362135, 2131362137, 2131362139 };
  int[] d = { 2131362130, 2131362132, 2131362134, 2131362136, 2131362138, 2131362140 };
  long[] e = new long[7];
  long[] f = new long[7];
  LinearLayout g = null;
  DiskUsageGraphView h = null;
  String[] i = null;
  ProgressBar j = null;
  private h k;
  
  public a(Context paramContext, h paramh)
  {
    super(paramContext);
    k = paramh;
    setTitle(2131428013);
    a = mContext.getText(2131427590).toString();
    a(null);
  }
  
  public a(Context paramContext, an paraman)
  {
    super(paramContext);
    k = null;
    setTitle(2131428013);
    a = mContext.getText(2131427590).toString();
    a(paraman);
  }
  
  private void c()
  {
    int m = 0;
    if (i == null) {
      i = new String[] { (String)mContext.getText(2131427629), (String)mContext.getText(2131427630), (String)mContext.getText(2131427631), (String)mContext.getText(2131427632), (String)mContext.getText(2131427633), (String)mContext.getText(2131427634) };
    }
    h.a(e, b);
    String str = mContext.getString(2131428719);
    while (m < i.length)
    {
      ((TextView)g.findViewById(d[m])).setText(i[m] + j.c(e[m]) + " (" + f[m] + str + ")");
      m += 1;
    }
    ((TextView)g.findViewById(2131362125)).setText(mContext.getText(2131427580) + j.c(e[(e.length - 1)]) + " (" + j.d(e[(e.length - 1)]) + " " + a + ")");
  }
  
  private void c(an paraman)
  {
    e[0] = g;
    e[1] = i;
    e[2] = k;
    e[3] = o;
    e[4] = m;
    e[5] = q;
    e[6] = c;
    f[0] = h;
    f[1] = j;
    f[2] = l;
    f[3] = p;
    f[4] = n;
    f[5] = r;
    f[6] = e;
  }
  
  public void a()
  {
    if (j != null) {
      bd.a(new c(this));
    }
  }
  
  protected void a(an paraman)
  {
    int n = 0;
    g = ((LinearLayout)g.a(mContext).inflate(2130903109, null));
    int m = 0;
    while (m < b.length)
    {
      ((GradientDrawable)g.findViewById(c[m]).getBackground()).setColor(b[m]);
      m += 1;
    }
    h = ((DiskUsageGraphView)g.findViewById(2131362128));
    j = ((ProgressBar)g.findViewById(2131362126));
    if (paraman == null)
    {
      if (k != null)
      {
        paraman = k.d(false);
        long[] arrayOfLong = k.c(false);
        m = n;
        while (m < 7)
        {
          e[m] = paraman[m];
          f[m] = arrayOfLong[m];
          m += 1;
        }
      }
    }
    else {
      c(paraman);
    }
    c();
    setContentView(g);
  }
  
  public void b()
  {
    if (j != null) {
      bd.a(new d(this));
    }
  }
  
  public void b(an paraman)
  {
    if (paraman == null) {
      return;
    }
    c(paraman);
    bd.a(new b(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */