package com.dianxinos.lockscreen.fragment;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.view.View;

public class a
  extends Fragment
{
  protected View a = null;
  protected Activity b;
  private boolean c = false;
  
  protected View a(int paramInt)
  {
    if (a == null) {
      return null;
    }
    return a.findViewById(paramInt);
  }
  
  public boolean d()
  {
    return false;
  }
  
  public void e()
  {
    c = true;
    f();
  }
  
  public void f() {}
  
  public void g()
  {
    c = false;
    h();
  }
  
  public void h() {}
  
  public void i() {}
  
  public void j() {}
  
  public boolean k()
  {
    return c;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    b = paramActivity;
  }
  
  public void onPause()
  {
    super.onPause();
    if (c) {
      h();
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if (c) {
      f();
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.fragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */