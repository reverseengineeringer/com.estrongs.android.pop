package com.dianxinos.lockscreen;

import android.content.Intent;
import android.os.Bundle;
import android.os.PowerManager;
import android.support.v4.view.ViewPager;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Window;
import com.dianxinos.lockscreen.c.i;
import com.dianxinos.lockscreen.fragment.DxFragmentActivity;
import com.dianxinos.lockscreen.fragment.TabInfo;
import java.lang.reflect.Field;
import java.util.ArrayList;

public class LockScreenContainer
  extends DxFragmentActivity
{
  private boolean f = false;
  private PowerManager g;
  
  private void g()
  {
    String str = getPackageName();
    Intent localIntent = new Intent(str + ".action.EXIT_HOME");
    localIntent.setPackage(str);
    sendBroadcast(localIntent);
  }
  
  protected int a()
  {
    return ad.fragment_tab_activity;
  }
  
  protected int a(ArrayList<TabInfo> paramArrayList)
  {
    paramArrayList.add(new TabInfo(0, "", s.class));
    paramArrayList.add(new TabInfo(1, "", j.class));
    return 1;
  }
  
  public void a(int paramInt)
  {
    super.a(paramInt);
    if ((f) && (paramInt == 2))
    {
      e.setCurrentItem(0);
      f = false;
    }
  }
  
  public void a(int paramInt1, float paramFloat, int paramInt2)
  {
    super.a(paramInt1, paramFloat, paramInt2);
    if (paramFloat <= 0.75F) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      return;
    }
  }
  
  public ViewPager b()
  {
    return e;
  }
  
  public void b(int paramInt)
  {
    super.b(paramInt);
    if (paramInt == 0) {
      finish();
    }
  }
  
  public void c()
  {
    try
    {
      Field localField = ViewPager.class.getDeclaredField("mScroller");
      localField.setAccessible(true);
      t localt = new t(this, e.getContext());
      localField.set(e, localt);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException) {}catch (IllegalArgumentException localIllegalArgumentException) {}catch (NoSuchFieldException localNoSuchFieldException) {}
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().addFlags(4718592);
    c();
    g = ((PowerManager)getSystemService("power"));
    g();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    c.a(this).a(Boolean.valueOf(false));
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 84) {
      return true;
    }
    if ((paramInt == 4) && (((j)((TabInfo)c.get(1)).b()).b())) {
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((e.getCurrentItem() == 1) && (g.isScreenOn())) {
      i.a(getApplicationContext(), 3);
    }
  }
  
  public boolean onTrackballEvent(MotionEvent paramMotionEvent)
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.LockScreenContainer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */