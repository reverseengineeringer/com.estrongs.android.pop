package com.baidu.mobstat;

import android.app.Activity;
import com.baidu.mobstat.util.e;

public class StatActivity
  extends Activity
{
  public void onPause()
  {
    super.onPause();
    e.a("sdkstat", "StatActivity.OnResume()");
    StatService.onPause(this);
  }
  
  public void onResume()
  {
    super.onResume();
    e.a("sdkstat", "StatActivity.OnResume()");
    StatService.onResume(this);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.StatActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */