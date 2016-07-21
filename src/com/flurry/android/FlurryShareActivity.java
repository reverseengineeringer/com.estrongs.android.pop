package com.flurry.android;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Window;
import android.widget.RelativeLayout;
import com.flurry.sdk.ew;
import com.flurry.sdk.hi;
import com.flurry.sdk.kg;

public class FlurryShareActivity
  extends Activity
{
  private static final String b = FlurryShareActivity.class.getName();
  hi a = new FlurryShareActivity.1(this);
  private ew c;
  private RelativeLayout d;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().setBackgroundDrawable(new ColorDrawable(0));
    d = new RelativeLayout(this);
    c = new ew(this);
    c.a(a, getIntent());
    setContentView(d);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (c != null) {
      c.a();
    }
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    kg.a(3, b, "onKeyUp");
    if ((paramInt == 4) && (c != null))
    {
      c.b();
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.FlurryShareActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */