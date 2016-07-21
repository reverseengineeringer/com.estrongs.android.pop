package com.estrongs.android.pop.app.diskusage;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.util.bk;
import com.estrongs.fs.b.ap;
import com.estrongs.fs.util.j;

public class a
  extends ci
{
  String a = "";
  int[] b = { 39936, -13524051, -3908929, -6684159, -8210621, -196864 };
  int[] c = { 2131624697, 2131624699, 2131624701, 2131624703, 2131624705, 2131624707 };
  int[] d = { 2131624698, 2131624700, 2131624702, 2131624704, 2131624706, 2131624708 };
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
    setTitle(2131232460);
    a = mContext.getText(2131232204).toString();
    a(null);
  }
  
  public a(Context paramContext, ap paramap)
  {
    super(paramContext);
    k = null;
    setTitle(2131232460);
    a = mContext.getText(2131232204).toString();
    a(paramap);
  }
  
  private void c()
  {
    int m = 0;
    if (i == null) {
      i = new String[] { (String)mContext.getText(2131231372), (String)mContext.getText(2131231368), (String)mContext.getText(2131231373), (String)mContext.getText(2131231369), (String)mContext.getText(2131231367), (String)mContext.getText(2131231371) };
    }
    h.a(e, b);
    String str = mContext.getString(2131232497);
    while (m < i.length)
    {
      ((TextView)g.findViewById(d[m])).setText(i[m] + j.c(e[m]) + " (" + f[m] + str + ")");
      m += 1;
    }
    ((TextView)g.findViewById(2131624693)).setText(mContext.getText(2131232218) + j.c(e[(e.length - 1)]) + " (" + j.d(e[(e.length - 1)]) + " " + a + ")");
  }
  
  private void c(ap paramap)
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
      bk.a(new c(this));
    }
  }
  
  protected void a(ap paramap)
  {
    int n = 0;
    g = ((LinearLayout)k.a(mContext).inflate(2130903198, null));
    int m = 0;
    while (m < b.length)
    {
      ((GradientDrawable)g.findViewById(c[m]).getBackground()).setColor(b[m]);
      m += 1;
    }
    h = ((DiskUsageGraphView)g.findViewById(2131624696));
    j = ((ProgressBar)g.findViewById(2131624694));
    if (paramap == null)
    {
      if (k != null)
      {
        paramap = k.d(false);
        long[] arrayOfLong = k.c(false);
        m = n;
        while (m < 7)
        {
          e[m] = paramap[m];
          f[m] = arrayOfLong[m];
          m += 1;
        }
      }
    }
    else {
      c(paramap);
    }
    c();
    setContentView(g);
  }
  
  public void b()
  {
    if (j != null) {
      bk.a(new d(this));
    }
  }
  
  public void b(ap paramap)
  {
    if (paramap == null) {
      return;
    }
    c(paramap);
    bk.a(new b(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */