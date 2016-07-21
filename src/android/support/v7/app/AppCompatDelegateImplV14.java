package android.support.v7.app;

import android.app.UiModeManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.Window;
import android.view.Window.Callback;

class AppCompatDelegateImplV14
  extends AppCompatDelegateImplV11
{
  private static final String KEY_LOCAL_NIGHT_MODE = "appcompat:local_night_mode";
  private static TwilightManager sTwilightManager;
  private boolean mApplyDayNightCalled;
  private boolean mHandleNativeActionModes = true;
  private int mLocalNightMode = -100;
  
  AppCompatDelegateImplV14(Context paramContext, Window paramWindow, AppCompatCallback paramAppCompatCallback)
  {
    super(paramContext, paramWindow, paramAppCompatCallback);
  }
  
  private int getNightModeToApply()
  {
    if (mLocalNightMode == -100) {}
    for (int i = getDefaultNightMode();; i = mLocalNightMode) {
      return mapNightModeToYesNo(i);
    }
  }
  
  private TwilightManager getTwilightManager()
  {
    if (sTwilightManager == null) {
      sTwilightManager = new TwilightManager(mContext.getApplicationContext());
    }
    return sTwilightManager;
  }
  
  private int mapNightModeToYesNo(int paramInt)
  {
    int j = 2;
    int i = j;
    switch (paramInt)
    {
    case 1: 
    default: 
      i = 1;
    case 2: 
      return i;
    case 0: 
      if (getTwilightManager().isNight()) {}
      for (paramInt = 2;; paramInt = 1) {
        return paramInt;
      }
    }
    i = j;
    switch (((UiModeManager)mContext.getSystemService("uimode")).getNightMode())
    {
    case 2: 
    case 1: 
    default: 
      return 1;
    }
    return 0;
  }
  
  private boolean updateConfigurationForNightMode(int paramInt)
  {
    boolean bool = false;
    Resources localResources = mContext.getResources();
    Configuration localConfiguration = localResources.getConfiguration();
    int i = uiMode;
    switch (paramInt)
    {
    default: 
      paramInt = 0;
    }
    for (;;)
    {
      if ((i & 0x30) != paramInt)
      {
        uiMode = (uiMode & 0xFFFFFFCF | paramInt);
        localResources.updateConfiguration(localConfiguration, null);
        bool = true;
      }
      return bool;
      paramInt = 16;
      continue;
      paramInt = 32;
    }
  }
  
  public boolean applyDayNight()
  {
    mApplyDayNightCalled = true;
    return updateConfigurationForNightMode(getNightModeToApply());
  }
  
  public boolean isHandleNativeActionModesEnabled()
  {
    return mHandleNativeActionModes;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if ((paramBundle != null) && (mLocalNightMode == -100)) {
      mLocalNightMode = paramBundle.getInt("appcompat:local_night_mode", -100);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (mLocalNightMode != -100) {
      paramBundle.putInt("appcompat:local_night_mode", mLocalNightMode);
    }
  }
  
  public void setHandleNativeActionModesEnabled(boolean paramBoolean)
  {
    mHandleNativeActionModes = paramBoolean;
  }
  
  public void setLocalNightMode(int paramInt)
  {
    switch (paramInt)
    {
    }
    do
    {
      Log.d("AppCompatDelegate", "setLocalNightMode() called with an unknown mode");
      do
      {
        return;
      } while (mLocalNightMode == paramInt);
      mLocalNightMode = paramInt;
    } while (!mApplyDayNightCalled);
    applyDayNight();
  }
  
  Window.Callback wrapWindowCallback(Window.Callback paramCallback)
  {
    return new AppCompatDelegateImplV14.AppCompatWindowCallbackV14(this, paramCallback);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.AppCompatDelegateImplV14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */