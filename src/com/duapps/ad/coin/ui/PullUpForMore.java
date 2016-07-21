package com.duapps.ad.coin.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.dianxinos.a.a.d;
import com.dianxinos.a.a.f;

public class PullUpForMore
  extends RelativeLayout
{
  private TextView a;
  private ProgressBar b;
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
    a.setText(d.getString(f.duapps_ad_pull_refresh));
    b.setVisibility(8);
  }
  
  private void b()
  {
    b.setVisibility(0);
    a.setText(d.getString(f.duapps_ad_loading));
  }
  
  private void c()
  {
    b.setVisibility(8);
    a.setText(d.getString(f.duapps_ad_footer_end));
  }
  
  private void d()
  {
    b.setVisibility(8);
    a.setText(d.getString(f.duapps_ad_nonetwork_message));
  }
  
  public int getFooterViewOptions()
  {
    return c;
  }
  
  protected void onFinishInflate()
  {
    a = ((TextView)findViewById(d.loader_tips));
    b = ((ProgressBar)findViewById(d.loader_progress));
    d = getContext().getResources();
  }
  
  public void setFooterViewOptions(int paramInt)
  {
    c = paramInt;
    a.setVisibility(0);
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
 * Qualified Name:     com.duapps.ad.coin.ui.PullUpForMore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */