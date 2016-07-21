package com.estrongs.android.pop.app.b.c;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.h.a.e;
import com.estrongs.android.h.f;
import java.util.List;

public class j
  extends h
{
  public j(Context paramContext)
  {
    super(paramContext);
  }
  
  private void a(com.estrongs.android.pop.app.b.b paramb, int paramInt, View paramView)
  {
    paramb = (com.estrongs.fs.impl.r.b)i.get(paramInt);
    ImageView localImageView = (ImageView)paramView.findViewById(2131625161);
    localImageView.setOnClickListener(new k(this, paramb));
    localImageView.setTag(paramb);
    paramInt = f.g(paramb);
    if (f.b(paramb)) {
      e.b(paramb.getAbsolutePath(), localImageView, paramb, paramInt, true);
    }
    for (;;)
    {
      ((TextView)paramView.findViewById(2131625163)).setText(paramb.getName());
      paramView.setVisibility(0);
      return;
      e.a(paramInt, localImageView, paramb);
    }
  }
  
  protected View a()
  {
    View localView = LayoutInflater.from(n).inflate(2130903318, null);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(n.getResources().getDimensionPixelSize(2131165321), n.getResources().getDimensionPixelSize(2131165321));
    rightMargin = n.getResources().getDimensionPixelSize(2131165262);
    gravity = 19;
    h.addView(localView, localLayoutParams);
    return localView;
  }
  
  protected void a(View paramView)
  {
    super.a(paramView);
    h.setOrientation(0);
  }
  
  public void a(Object paramObject)
  {
    int i = 4;
    super.a(paramObject);
    paramObject = (com.estrongs.android.pop.app.b.b)paramObject;
    if (i.size() > 4) {}
    for (;;)
    {
      switch (i)
      {
      default: 
        return;
        i = i.size();
      }
    }
    a((com.estrongs.android.pop.app.b.b)paramObject, 3, m);
    a((com.estrongs.android.pop.app.b.b)paramObject, 2, l);
    a((com.estrongs.android.pop.app.b.b)paramObject, 1, k);
    a((com.estrongs.android.pop.app.b.b)paramObject, 0, j);
  }
  
  protected void b()
  {
    h.setOrientation(0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.c.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */