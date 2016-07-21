package com.estrongs.android.pop.esclasses;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceActivity;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.d.a;
import java.util.ArrayList;
import java.util.Iterator;

public class ESPreferenceActivity
  extends PreferenceActivity
  implements a
{
  private static p a = null;
  private Handler b;
  ArrayList<g> t = null;
  
  public Activity G()
  {
    return this;
  }
  
  public void a(g paramg)
  {
    if (t == null) {
      t = new ArrayList();
    }
    t.add(paramg);
  }
  
  public void a(Runnable paramRunnable)
  {
    b.post(paramRunnable);
  }
  
  public void addPreferencesFromResource(int paramInt)
  {
    super.addPreferencesFromResource(paramInt);
    new n(this).a(paramInt, getPreferenceScreen());
  }
  
  public void b(g paramg)
  {
    if (t == null) {
      return;
    }
    t.remove(paramg);
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
    if (t != null)
    {
      Iterator localIterator = t.iterator();
      while (localIterator.hasNext()) {
        ((g)localIterator.next()).a(paramInt1, paramInt2, paramIntent);
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      i.a(this);
      b = new Handler();
      return;
    }
    catch (Exception paramBundle)
    {
      for (;;) {}
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
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESPreferenceActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */