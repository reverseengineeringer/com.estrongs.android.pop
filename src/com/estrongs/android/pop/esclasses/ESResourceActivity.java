package com.estrongs.android.pop.esclasses;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Window;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.d.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ESResourceActivity
  extends Activity
  implements a
{
  private static List<Activity> a = new ArrayList();
  ArrayList<g> c = null;
  
  public Activity G()
  {
    return this;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    a(getString(paramInt1), paramInt2);
  }
  
  public void a(g paramg)
  {
    if (c == null) {
      c = new ArrayList();
    }
    c.add(paramg);
  }
  
  public void a(Runnable paramRunnable)
  {
    runOnUiThread(paramRunnable);
  }
  
  public void a(String paramString, int paramInt)
  {
    runOnUiThread(new o(this, paramString, paramInt));
  }
  
  public void b(int paramInt)
  {
    a(paramInt, 0);
  }
  
  public void b(g paramg)
  {
    if (c == null) {
      return;
    }
    c.remove(paramg);
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
      p localp = p.a(super.getResources());
      return localp;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public Context n()
  {
    return this;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (c != null)
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext()) {
        ((g)localIterator.next()).a(paramInt1, paramInt2, paramIntent);
      }
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    try
    {
      p.a(super.getResources()).a();
      return;
    }
    catch (Exception paramConfiguration) {}
  }
  
  protected void onCreate(Bundle arg1)
  {
    super.onCreate(???);
    ((p)getResources()).a();
    try
    {
      i.a(this);
      synchronized (a)
      {
        a.add(this);
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
    c.b(this);
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
    c.a(this).b();
    FexApplication.a().d();
  }
  
  protected void onResume()
  {
    super.onResume();
    c.a(this).a();
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
    new l(this).a(paramInt, getWindow().peekDecorView());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESResourceActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */