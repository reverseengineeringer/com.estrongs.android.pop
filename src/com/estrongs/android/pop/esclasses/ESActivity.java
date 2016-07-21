package com.estrongs.android.pop.esclasses;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Window;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.d.a;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.e.d;
import com.estrongs.android.ui.theme.at;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ESActivity
  extends AppCompatActivity
  implements a
{
  private static List<Activity> a = new ArrayList();
  ArrayList<g> s = null;
  
  public static Activity H()
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
  
  public static void I()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      Activity localActivity = (Activity)localIterator.next();
      if ((localActivity != null) && (!(localActivity instanceof FileExplorerActivity))) {
        localActivity.finish();
      }
    }
    a.clear();
  }
  
  public Activity G()
  {
    return this;
  }
  
  public at J()
  {
    return at.a(this);
  }
  
  public void a(g paramg)
  {
    if (s == null) {
      s = new ArrayList();
    }
    s.add(paramg);
  }
  
  public void a(Runnable paramRunnable)
  {
    runOnUiThread(paramRunnable);
  }
  
  public void a(String paramString, int paramInt)
  {
    runOnUiThread(new f(this, paramString, paramInt));
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    a(getString(paramInt1), paramInt2);
  }
  
  public void b(g paramg)
  {
    if (s == null) {
      return;
    }
    s.remove(paramg);
  }
  
  public Drawable c(int paramInt)
  {
    return getResources().getDrawable(paramInt);
  }
  
  public void c(String paramString)
  {
    a(paramString, 0);
  }
  
  public void d(int paramInt)
  {
    b(paramInt, 0);
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
  
  public Object getSystemService(String paramString)
  {
    Object localObject = super.getSystemService(paramString);
    paramString = (String)localObject;
    if ((localObject instanceof LayoutInflater)) {
      paramString = new k((LayoutInflater)localObject, this);
    }
    return paramString;
  }
  
  public Context n()
  {
    return this;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (s != null)
    {
      Iterator localIterator = s.iterator();
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
        d.a(this);
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
  
  public void setSupportActionBar(Toolbar paramToolbar)
  {
    super.setSupportActionBar(paramToolbar);
    d.a(this);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */