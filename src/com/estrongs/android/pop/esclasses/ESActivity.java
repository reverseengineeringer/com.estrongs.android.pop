package com.estrongs.android.pop.esclasses;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Window;
import com.estrongs.android.pop.FexApplication;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ESActivity
  extends Activity
{
  private static List<Activity> a = new ArrayList();
  ArrayList<c> s = null;
  
  public static Activity A()
  {
    synchronized (a)
    {
      int i = a.size();
      if (i > 0)
      {
        Activity localActivity = (Activity)a.get(i - 1);
        return localActivity;
      }
      return null;
    }
  }
  
  public void a(c paramc)
  {
    if (s == null) {
      s = new ArrayList();
    }
    s.add(paramc);
  }
  
  public void a(Runnable paramRunnable)
  {
    runOnUiThread(paramRunnable);
  }
  
  public void a(String paramString, int paramInt)
  {
    runOnUiThread(new b(this, paramString, paramInt));
  }
  
  public void b(c paramc)
  {
    if (s == null) {
      return;
    }
    s.remove(paramc);
  }
  
  public Drawable c(int paramInt)
  {
    return getResources().getDrawable(paramInt);
  }
  
  public void c(int paramInt1, int paramInt2)
  {
    a(getString(paramInt1), paramInt2);
  }
  
  public void c(String paramString)
  {
    a(paramString, 0);
  }
  
  public void d(int paramInt)
  {
    c(paramInt, 0);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    try
    {
      boolean bool = super.dispatchKeyEvent(paramKeyEvent);
      return bool;
    }
    catch (IllegalStateException paramKeyEvent) {}
    return true;
  }
  
  public Resources getResources()
  {
    try
    {
      k localk = k.a(super.getResources());
      return localk;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (s != null)
    {
      Iterator localIterator = s.iterator();
      while (localIterator.hasNext()) {
        ((c)localIterator.next()).a(paramInt1, paramInt2, paramIntent);
      }
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    try
    {
      k.a(super.getResources()).a();
      return;
    }
    catch (Exception paramConfiguration) {}
  }
  
  protected void onCreate(Bundle arg1)
  {
    super.onCreate(???);
    ((k)getResources()).a();
    try
    {
      e.a(this);
      synchronized (a)
      {
        a.add(this);
        return;
      }
    }
    catch (Exception ???)
    {
      for (;;) {}
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    for (;;)
    {
      int i;
      synchronized (a)
      {
        int j = a.size();
        i = 0;
        if (i < j)
        {
          if (((Activity)a.get(i)).equals(this)) {
            a.remove(i);
          }
        }
        else {
          return;
        }
      }
      i += 1;
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    FexApplication.a().d();
  }
  
  protected void onResume()
  {
    super.onResume();
    FexApplication.a().c();
    for (;;)
    {
      int i;
      synchronized (a)
      {
        int j = a.size();
        i = 0;
        if (i < j)
        {
          if (((Activity)a.get(i)).equals(this)) {
            a.remove(i);
          }
        }
        else
        {
          a.add(this);
          return;
        }
      }
      i += 1;
    }
  }
  
  public void setContentView(int paramInt)
  {
    getWindow().setContentView(paramInt);
    new h(this).a(paramInt, getWindow().peekDecorView());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */