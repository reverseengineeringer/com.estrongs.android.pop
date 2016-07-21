package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.graphics.LightingColorFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.adapter.e;
import com.estrongs.android.ui.adapter.f;
import com.estrongs.android.util.bk;

public class gx
  extends ci
{
  protected e a;
  protected hb b;
  protected ha c;
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
  
  public gx(Context paramContext)
  {
    super(paramContext);
    setTitle(2131230902);
    a();
  }
  
  private void b(View paramView, int paramInt)
  {
    c(paramView.findViewById(2131624644), paramInt * 3);
    c(paramView.findViewById(2131624645), paramInt * 3 + 1);
    c(paramView.findViewById(2131624646), paramInt * 3 + 2);
  }
  
  private void c(View paramView, int paramInt)
  {
    n.getView(paramInt, paramView, null).setOnClickListener(new gy(this, paramInt));
  }
  
  private void d(View paramView, int paramInt)
  {
    a.getView(paramInt, paramView, null).setOnClickListener(new gz(this, paramInt));
  }
  
  protected void a()
  {
    m = ((ScrollView)k.a(mContext).inflate(2130903187, null));
    d = m.findViewById(2131624199);
    e = d.findViewById(2131624643);
    f = d.findViewById(2131624647);
    g = d.findViewById(2131624648);
    n = new f(mContext);
    b(e, 0);
    b(f, 1);
    b(g, 2);
    i = m.findViewById(2131624651);
    j = i.findViewById(2131624643);
    k = i.findViewById(2131624647);
    a = new e(mContext);
    a(j, 0);
    a(k, 1);
    setContentView(m);
    m.setScrollbarFadingEnabled(false);
    if (!(ad.a(mContext).al() | ad.a(mContext).an()))
    {
      i.setVisibility(8);
      m.findViewById(2131624649).setVisibility(8);
    }
  }
  
  protected void a(int paramInt)
  {
    int i2 = 2131624646;
    int i1 = 2131624645;
    int i3 = 2131624644;
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      i1 = 2131624644;
      i2 = 2131624644;
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
        localObject1 = (ESImageView)((View)localObject1).findViewById(2131624054);
        localObject2 = (ESImageView)((View)localObject2).findViewById(2131624054);
        if (!bk.h()) {
          break;
        }
        ((ESImageView)localObject1).setTranslucent(true);
        ((ESImageView)localObject2).setTranslucent(true);
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      paramInt = 2131624645;
      i2 = 2131624645;
      continue;
      paramInt = 2131624646;
      i1 = 2131624646;
      continue;
      paramInt = 2131624653;
      i1 = 2131624653;
      i2 = 2131624653;
    }
    LightingColorFilter localLightingColorFilter = new LightingColorFilter(1, -7829368);
    localException.setColorFilter(localLightingColorFilter);
    ((ESImageView)localObject2).setColorFilter(localLightingColorFilter);
  }
  
  protected void a(View paramView, int paramInt)
  {
    d(paramView.findViewById(2131624644), paramInt * 4);
    d(paramView.findViewById(2131624645), paramInt * 4 + 1);
    d(paramView.findViewById(2131624646), paramInt * 4 + 2);
    d(paramView.findViewById(2131624653), paramInt * 4 + 3);
  }
  
  public void a(ha paramha)
  {
    c = paramha;
  }
  
  public void a(hb paramhb)
  {
    b = paramhb;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.gx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */