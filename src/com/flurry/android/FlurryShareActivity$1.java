package com.flurry.android;

import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.flurry.sdk.hi;

class FlurryShareActivity$1
  implements hi
{
  FlurryShareActivity$1(FlurryShareActivity paramFlurryShareActivity) {}
  
  public void a()
  {
    a.finish();
  }
  
  public void a(RelativeLayout paramRelativeLayout)
  {
    FlurryShareActivity.a(a).removeAllViews();
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.addRule(13);
    FlurryShareActivity.a(a).addView(paramRelativeLayout, localLayoutParams);
    a.setContentView(FlurryShareActivity.a(a));
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.FlurryShareActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */