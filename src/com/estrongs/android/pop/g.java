package com.estrongs.android.pop;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import com.dianxinos.lockscreen.LockScreenContainer;
import com.estrongs.android.j.c;

class g
  implements Application.ActivityLifecycleCallbacks
{
  g(FexApplication paramFexApplication) {}
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity)
  {
    if ((paramActivity instanceof LockScreenContainer)) {
      c.a(paramActivity).b();
    }
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    if ((paramActivity instanceof LockScreenContainer)) {
      c.a(paramActivity).a();
    }
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity) {}
  
  public void onActivityStopped(Activity paramActivity) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */