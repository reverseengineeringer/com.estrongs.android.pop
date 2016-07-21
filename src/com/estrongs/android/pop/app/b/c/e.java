package com.estrongs.android.pop.app.b.c;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.pop.app.b.b;
import com.estrongs.android.pop.app.b.i;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.util.bg;
import java.io.File;
import java.util.List;

public class e
  extends h
{
  private int o;
  
  public e(Context paramContext)
  {
    super(paramContext);
  }
  
  private void a(b paramb, int paramInt, View paramView)
  {
    i locali = (i)i.get(paramInt);
    ImageView localImageView = (ImageView)paramView.findViewById(2131625161);
    CheckBox localCheckBox = (CheckBox)paramView.findViewById(2131625162);
    com.estrongs.fs.impl.local.f localf = new com.estrongs.fs.impl.local.f(new File(locali.getAbsolutePath()));
    paramInt = bg.b(locali.getAbsolutePath());
    if (bg.g(paramInt)) {
      localf.setESFileType(paramInt);
    }
    for (;;)
    {
      com.estrongs.android.h.a.e.a(localf, localImageView);
      localCheckBox.setChecked(a);
      localCheckBox.setOnCheckedChangeListener(new f(this, locali, paramb));
      localImageView.setOnClickListener(new g(this, locali));
      paramView.setVisibility(0);
      return;
      localf.setESFileType(65552);
    }
  }
  
  protected View a()
  {
    View localView = LayoutInflater.from(n).inflate(2130903317, null);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(o, o);
    rightMargin = n.getResources().getDimensionPixelSize(2131165272);
    gravity = 19;
    localView.setVisibility(8);
    h.addView(localView, localLayoutParams);
    return localView;
  }
  
  protected void a(View paramView)
  {
    o = n.getResources().getDimensionPixelSize(2131165325);
    int i = (cu.e(n) - n.getResources().getDimensionPixelSize(2131165255) - n.getResources().getDimensionPixelSize(2131165255) - n.getResources().getDimensionPixelSize(2131165272) - n.getResources().getDimensionPixelSize(2131165272) - n.getResources().getDimensionPixelSize(2131165262) - n.getResources().getDimensionPixelSize(2131165262) - n.getResources().getDimensionPixelSize(2131165272) * 3) / 4;
    if (i < o) {
      o = i;
    }
    super.a(paramView);
  }
  
  public void a(Object paramObject)
  {
    int i = 4;
    super.a(paramObject);
    paramObject = (b)paramObject;
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
    a((b)paramObject, 3, m);
    a((b)paramObject, 2, l);
    a((b)paramObject, 1, k);
    a((b)paramObject, 0, j);
  }
  
  protected void b()
  {
    h.setOrientation(0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.c.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */