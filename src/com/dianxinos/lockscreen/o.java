package com.dianxinos.lockscreen;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class o
  extends v
{
  private c a;
  private ImageView b;
  private Context c;
  private ImageView d;
  private Resources e;
  
  public o(Context paramContext)
  {
    super(paramContext);
    a = c.a(paramContext);
    c = paramContext;
  }
  
  private void c()
  {
    ImageView localImageView = d;
    if (a.c()) {}
    for (Drawable localDrawable = e.getDrawable(ab.lock_screen_setting_switch_open);; localDrawable = e.getDrawable(ab.lock_screen_setting_switch_close))
    {
      localImageView.setImageDrawable(localDrawable);
      return;
    }
  }
  
  public View a()
  {
    View localView = LayoutInflater.from(c).inflate(ad.lock_screen_setting_view, null, false);
    b = ((ImageView)localView.findViewById(ac.setting_back));
    d = ((ImageView)localView.findViewById(ac.setting_switch));
    r localr = c.a(c).a();
    if (localr != null)
    {
      ((TextView)localView.findViewById(ac.main_title)).setText(localr.a());
      ((TextView)localView.findViewById(ac.setting_text)).setText(localr.b());
    }
    e = c.getResources();
    c();
    b.setOnClickListener(new p(this));
    d.setOnClickListener(new q(this));
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */