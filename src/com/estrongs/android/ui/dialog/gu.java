package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.graphics.LightingColorFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.a.e;
import com.estrongs.android.ui.a.f;
import com.estrongs.android.util.bd;

public class gu
  extends cg
{
  protected e a;
  protected gy b;
  protected gx c;
  protected View d;
  protected View e;
  protected View f;
  protected View g;
  protected final int h = 3;
  protected View i;
  protected View j;
  protected View k;
  protected final int l = 4;
  ScrollView m;
  private f n;
  
  public gu(Context paramContext)
  {
    super(paramContext);
    setTitle(2131427364);
    a();
  }
  
  private void b(View paramView, int paramInt)
  {
    c(paramView.findViewById(2131362079), paramInt * 3);
    c(paramView.findViewById(2131362080), paramInt * 3 + 1);
    c(paramView.findViewById(2131362081), paramInt * 3 + 2);
  }
  
  private void c(View paramView, int paramInt)
  {
    n.getView(paramInt, paramView, null).setOnClickListener(new gv(this, paramInt));
  }
  
  private void d(View paramView, int paramInt)
  {
    a.getView(paramInt, paramView, null).setOnClickListener(new gw(this, paramInt));
  }
  
  protected void a()
  {
    m = ((ScrollView)g.a(mContext).inflate(2130903099, null));
    d = m.findViewById(2131362077);
    e = d.findViewById(2131362078);
    f = d.findViewById(2131362082);
    g = d.findViewById(2131362083);
    n = new f(mContext);
    b(e, 0);
    b(f, 1);
    b(g, 2);
    i = m.findViewById(2131362086);
    j = i.findViewById(2131362078);
    k = i.findViewById(2131362082);
    a = new e(mContext);
    a(j, 0);
    a(k, 1);
    setContentView(m);
    m.setScrollbarFadingEnabled(false);
    if (!(ad.a(mContext).ak() | ad.a(mContext).am()))
    {
      i.setVisibility(8);
      m.findViewById(2131362084).setVisibility(8);
    }
  }
  
  protected void a(int paramInt)
  {
    int i2 = 2131362081;
    int i1 = 2131362080;
    int i3 = 2131362079;
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      i1 = 2131362079;
      i2 = 2131362079;
      paramInt = i3;
    }
    Object localObject2;
    for (;;)
    {
      try
      {
        Object localObject1 = j.findViewById(i1);
        localObject2 = k.findViewById(paramInt);
        ((View)localObject1).setEnabled(false);
        ((View)localObject2).setEnabled(false);
        ((TextView)i.findViewById(i2)).setTextColor(-7829368);
        localObject1 = (ESImageView)((View)localObject1).findViewById(2131361853);
        localObject2 = (ESImageView)((View)localObject2).findViewById(2131361853);
        if (!bd.h()) {
          break;
        }
        ((ESImageView)localObject1).a(true);
        ((ESImageView)localObject2).a(true);
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      paramInt = 2131362080;
      i2 = 2131362080;
      continue;
      paramInt = 2131362081;
      i1 = 2131362081;
      continue;
      paramInt = 2131362088;
      i1 = 2131362088;
      i2 = 2131362088;
    }
    LightingColorFilter localLightingColorFilter = new LightingColorFilter(1, -7829368);
    localException.setColorFilter(localLightingColorFilter);
    ((ESImageView)localObject2).setColorFilter(localLightingColorFilter);
  }
  
  protected void a(View paramView, int paramInt)
  {
    d(paramView.findViewById(2131362079), paramInt * 4);
    d(paramView.findViewById(2131362080), paramInt * 4 + 1);
    d(paramView.findViewById(2131362081), paramInt * 4 + 2);
    d(paramView.findViewById(2131362088), paramInt * 4 + 3);
  }
  
  public void a(gx paramgx)
  {
    c = paramgx;
  }
  
  public void a(gy paramgy)
  {
    b = paramgy;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.gu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */