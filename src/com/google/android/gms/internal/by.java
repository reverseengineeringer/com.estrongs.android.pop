package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Bundle;

@me
public class by
  implements Application.ActivityLifecycleCallbacks
{
  private Activity a;
  private Context b;
  private final Object c = new Object();
  
  public by(Application paramApplication, Activity paramActivity)
  {
    paramApplication.registerActivityLifecycleCallbacks(this);
    a(paramActivity);
    b = paramApplication.getApplicationContext();
  }
  
  private void a(Activity paramActivity)
  {
    synchronized (c)
    {
      if (!paramActivity.getClass().getName().startsWith("com.google.android.gms.ads")) {
        a = paramActivity;
      }
      return;
    }
  }
  
  public Activity a()
  {
    return a;
  }
  
  public Context b()
  {
    return b;
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity)
  {
    synchronized (c)
    {
      if (a == null) {
        return;
      }
      if (a.equals(paramActivity)) {
        a = null;
      }
      return;
    }
  }
  
  public void onActivityPaused(Activity paramActivity)
  {
    a(paramActivity);
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    a(paramActivity);
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity)
  {
    a(paramActivity);
  }
  
  public void onActivityStopped(Activity paramActivity) {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */