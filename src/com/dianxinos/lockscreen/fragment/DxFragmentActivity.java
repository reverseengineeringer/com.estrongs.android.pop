package com.dianxinos.lockscreen.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.support.v4.view.el;
import android.util.Log;
import com.dianxinos.lockscreen.ac;
import com.dianxinos.lockscreen.c.g;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class DxFragmentActivity
  extends FragmentActivity
  implements el
{
  private static final boolean f = g.a;
  protected int a = 0;
  protected int b = -1;
  protected ArrayList<TabInfo> c = new ArrayList();
  protected c d = null;
  protected ViewPager e;
  
  private final void b()
  {
    a = a(c);
    Object localObject = getIntent();
    if (localObject != null) {
      a = ((Intent)localObject).getIntExtra("tab", a);
    }
    if (f) {
      Log.d("DxFragmentActivity", "mTabs.size() == " + c.size());
    }
    d = new c(this, this, getSupportFragmentManager(), c);
    e = ((ViewPager)findViewById(ac.pager));
    e.setAdapter(d);
    e.setOnPageChangeListener(this);
    e.setOffscreenPageLimit(c.size());
    e.setPageMargin(0);
    d();
    e.setCurrentItem(a);
    localObject = f();
    e.post(new b(this, (Message)localObject));
  }
  
  protected abstract int a();
  
  protected abstract int a(ArrayList<TabInfo> paramArrayList);
  
  public void a(int paramInt) {}
  
  public void a(int paramInt1, float paramFloat, int paramInt2)
  {
    paramInt1 = 0;
    while (paramInt1 < c.size())
    {
      TabInfo localTabInfo = (TabInfo)c.get(paramInt1);
      if (b != null) {
        b.j();
      }
      paramInt1 += 1;
    }
  }
  
  public void b(int paramInt)
  {
    a = paramInt;
    if (b == a) {
      return;
    }
    if ((b >= 0) && (b < c.size()))
    {
      localTabInfo = (TabInfo)c.get(b);
      if (b != null)
      {
        b.g();
        if (b.k()) {
          throw new IllegalStateException(b.getClass().getName() + ".onScrollOut must call super.onScrollOut()");
        }
      }
    }
    TabInfo localTabInfo = (TabInfo)c.get(a);
    if (b != null)
    {
      b.e();
      if (!b.k()) {
        throw new IllegalStateException(b.getClass().getName() + ".onScrollIn must call super.onScrollIn()");
      }
    }
    b = a;
  }
  
  protected TabInfo c(int paramInt)
  {
    Object localObject;
    if (c == null)
    {
      localObject = null;
      return (TabInfo)localObject;
    }
    int j = c.size();
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label61;
      }
      TabInfo localTabInfo = (TabInfo)c.get(i);
      localObject = localTabInfo;
      if (localTabInfo.a() == paramInt) {
        break;
      }
      i += 1;
    }
    label61:
    return null;
  }
  
  protected void d() {}
  
  protected boolean e()
  {
    TabInfo localTabInfo = (TabInfo)c.get(a);
    if (b != null) {
      return b.d();
    }
    return false;
  }
  
  protected Message f()
  {
    return null;
  }
  
  public void onBackPressed()
  {
    if (!e()) {
      finish();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(a());
    b();
  }
  
  protected void onDestroy()
  {
    c.clear();
    c = null;
    d.notifyDataSetChanged();
    d = null;
    e.setAdapter(null);
    e = null;
    super.onDestroy();
  }
  
  protected void onUserLeaveHint()
  {
    super.onUserLeaveHint();
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      TabInfo localTabInfo = (TabInfo)localIterator.next();
      if (b != null) {
        b.i();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.fragment.DxFragmentActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */