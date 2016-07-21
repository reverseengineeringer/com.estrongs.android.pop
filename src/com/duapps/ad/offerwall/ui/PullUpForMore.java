package com.duapps.ad.offerwall.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.dianxinos.a.a.b;
import com.dianxinos.a.a.d;
import com.dianxinos.a.a.f;

public class PullUpForMore
  extends RelativeLayout
{
  private TextView a;
  private ImageView b;
  private int c = 0;
  private Resources d;
  
  public PullUpForMore(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public PullUpForMore(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void a()
  {
    b.clearAnimation();
    a.setText(d.getString(f.duapps_ad_pull_refresh));
    b.setVisibility(8);
  }
  
  private void b()
  {
    Animation localAnimation = AnimationUtils.loadAnimation(getContext(), b.duapps_ad_offer_wall_indeterminate_rotate);
    b.setVisibility(0);
    b.startAnimation(localAnimation);
    a.setText(d.getString(f.duapps_ad_loading));
  }
  
  private void c()
  {
    b.clearAnimation();
    b.setVisibility(8);
    a.setText(d.getString(f.duapps_ad_footer_end));
  }
  
  private void d() {}
  
  public int getFooterViewOptions()
  {
    return c;
  }
  
  protected void onFinishInflate()
  {
    a = ((TextView)findViewById(d.duapps_ad_offer_wall_more_footer_tip));
    b = ((ImageView)findViewById(d.duapps_ad_offer_wall_more_footer_pb));
    d = getContext().getResources();
  }
  
  public void setFooterViewOptions(int paramInt)
  {
    c = paramInt;
    switch (c)
    {
    default: 
      return;
    case 0: 
      a();
      return;
    case 1: 
    case 2: 
      b();
      return;
    case 3: 
      c();
      return;
    }
    d();
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.offerwall.ui.PullUpForMore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */