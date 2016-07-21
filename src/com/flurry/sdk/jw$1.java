package com.flurry.sdk;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

class jw$1
  implements Application.ActivityLifecycleCallbacks
{
  jw$1(jw paramjw) {}
  
  protected void a(Activity paramActivity, jv.a parama)
  {
    jv localjv = new jv();
    a = paramActivity;
    b = parama;
    localjv.b();
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    kg.a(3, jw.d(), "onActivityCreated for activity:" + paramActivity);
    a(paramActivity, jv.a.a);
  }
  
  public void onActivityDestroyed(Activity paramActivity)
  {
    kg.a(3, jw.d(), "onActivityDestroyed for activity:" + paramActivity);
    a(paramActivity, jv.a.b);
  }
  
  public void onActivityPaused(Activity paramActivity)
  {
    kg.a(3, jw.d(), "onActivityPaused for activity:" + paramActivity);
    a(paramActivity, jv.a.c);
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    kg.a(3, jw.d(), "onActivityResumed for activity:" + paramActivity);
    a(paramActivity, jv.a.d);
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle)
  {
    kg.a(3, jw.d(), "onActivitySaveInstanceState for activity:" + paramActivity);
    a(paramActivity, jv.a.g);
  }
  
  public void onActivityStarted(Activity paramActivity)
  {
    kg.a(3, jw.d(), "onActivityStarted for activity:" + paramActivity);
    a(paramActivity, jv.a.e);
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    kg.a(3, jw.d(), "onActivityStopped for activity:" + paramActivity);
    a(paramActivity, jv.a.f);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jw.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */