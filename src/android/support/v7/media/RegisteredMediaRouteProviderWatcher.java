package android.support.v7.media;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

final class RegisteredMediaRouteProviderWatcher
{
  private final RegisteredMediaRouteProviderWatcher.Callback mCallback;
  private final Context mContext;
  private final Handler mHandler;
  private final PackageManager mPackageManager;
  private final ArrayList<RegisteredMediaRouteProvider> mProviders = new ArrayList();
  private boolean mRunning;
  private final BroadcastReceiver mScanPackagesReceiver = new RegisteredMediaRouteProviderWatcher.1(this);
  private final Runnable mScanPackagesRunnable = new RegisteredMediaRouteProviderWatcher.2(this);
  
  public RegisteredMediaRouteProviderWatcher(Context paramContext, RegisteredMediaRouteProviderWatcher.Callback paramCallback)
  {
    mContext = paramContext;
    mCallback = paramCallback;
    mHandler = new Handler();
    mPackageManager = paramContext.getPackageManager();
  }
  
  private int findProvider(String paramString1, String paramString2)
  {
    int j = mProviders.size();
    int i = 0;
    while (i < j)
    {
      if (((RegisteredMediaRouteProvider)mProviders.get(i)).hasComponentName(paramString1, paramString2)) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  private void scanPackages()
  {
    if (!mRunning) {
      return;
    }
    Object localObject1 = new Intent("android.media.MediaRouteProviderService");
    localObject1 = mPackageManager.queryIntentServices((Intent)localObject1, 0).iterator();
    int i = 0;
    label38:
    Object localObject2;
    int k;
    int j;
    if (((Iterator)localObject1).hasNext())
    {
      localObject2 = nextserviceInfo;
      if (localObject2 == null) {
        break label278;
      }
      k = findProvider(packageName, name);
      if (k < 0)
      {
        localObject2 = new RegisteredMediaRouteProvider(mContext, new ComponentName(packageName, name));
        ((RegisteredMediaRouteProvider)localObject2).start();
        ArrayList localArrayList = mProviders;
        j = i + 1;
        localArrayList.add(i, localObject2);
        mCallback.addProvider((MediaRouteProvider)localObject2);
        i = j;
      }
    }
    label278:
    for (;;)
    {
      break label38;
      if (k >= i)
      {
        localObject2 = (RegisteredMediaRouteProvider)mProviders.get(k);
        ((RegisteredMediaRouteProvider)localObject2).start();
        ((RegisteredMediaRouteProvider)localObject2).rebindIfDisconnected();
        localObject2 = mProviders;
        j = i + 1;
        Collections.swap((List)localObject2, k, i);
        i = j;
        continue;
        if (i >= mProviders.size()) {
          break;
        }
        j = mProviders.size() - 1;
        while (j >= i)
        {
          localObject1 = (RegisteredMediaRouteProvider)mProviders.get(j);
          mCallback.removeProvider((MediaRouteProvider)localObject1);
          mProviders.remove(localObject1);
          ((RegisteredMediaRouteProvider)localObject1).stop();
          j -= 1;
        }
        break;
      }
    }
  }
  
  public void start()
  {
    if (!mRunning)
    {
      mRunning = true;
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.PACKAGE_ADDED");
      localIntentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
      localIntentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
      localIntentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
      localIntentFilter.addAction("android.intent.action.PACKAGE_RESTARTED");
      localIntentFilter.addDataScheme("package");
      mContext.registerReceiver(mScanPackagesReceiver, localIntentFilter, null, mHandler);
      mHandler.post(mScanPackagesRunnable);
    }
  }
  
  public void stop()
  {
    if (mRunning)
    {
      mRunning = false;
      mContext.unregisterReceiver(mScanPackagesReceiver);
      mHandler.removeCallbacks(mScanPackagesRunnable);
      int i = mProviders.size() - 1;
      while (i >= 0)
      {
        ((RegisteredMediaRouteProvider)mProviders.get(i)).stop();
        i -= 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.RegisteredMediaRouteProviderWatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */