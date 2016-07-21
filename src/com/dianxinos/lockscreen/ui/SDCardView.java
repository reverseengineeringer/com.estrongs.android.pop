package com.dianxinos.lockscreen.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.dianxinos.lockscreen.a.b;
import com.dianxinos.lockscreen.ab;
import com.dianxinos.lockscreen.ac;
import com.dianxinos.lockscreen.ad;
import com.dianxinos.lockscreen.c;
import com.dianxinos.lockscreen.c.g;

public class SDCardView
  extends LinearLayout
{
  private InfoCycleView a;
  private TextView b;
  private TextView c;
  private b d;
  
  public SDCardView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SDCardView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    inflate(paramContext, ad.lock_screen_sd_card_layout, this);
    a = ((InfoCycleView)findViewById(ac.lock_screen_sd_card_info_cycle_view));
    b = ((TextView)findViewById(ac.lock_screen_card_one_title));
    c = ((TextView)findViewById(ac.lock_screen_card_one_message));
    setBackgroundResource(ab.lock_screen_sd_card_background);
    setOnClickListener(new q(this));
    c();
  }
  
  private void c()
  {
    d = c.a(getContext()).f();
    b.setText(d.c());
    c.setText(d.d());
    a.a(d.b());
    if (g.a) {
      g.a("DisplayCard", "sdcard view title:" + d.c() + " - des:" + d.d() + " - per:" + d.b());
    }
  }
  
  public void a()
  {
    if (d == null) {
      c();
    }
  }
  
  public void b()
  {
    d = null;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.SDCardView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */