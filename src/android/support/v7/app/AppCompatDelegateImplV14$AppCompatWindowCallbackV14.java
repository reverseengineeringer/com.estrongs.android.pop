package android.support.v7.app;

import android.support.v7.view.SupportActionModeWrapper.CallbackWrapper;
import android.view.ActionMode.Callback;
import android.view.Window.Callback;

class AppCompatDelegateImplV14$AppCompatWindowCallbackV14
  extends AppCompatDelegateImplBase.AppCompatWindowCallbackBase
{
  AppCompatDelegateImplV14$AppCompatWindowCallbackV14(AppCompatDelegateImplV14 paramAppCompatDelegateImplV14, Window.Callback paramCallback)
  {
    super(paramAppCompatDelegateImplV14, paramCallback);
  }
  
  public android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback)
  {
    if (this$0.isHandleNativeActionModesEnabled()) {
      return startAsSupportActionMode(paramCallback);
    }
    return super.onWindowStartingActionMode(paramCallback);
  }
  
  final android.view.ActionMode startAsSupportActionMode(ActionMode.Callback paramCallback)
  {
    paramCallback = new SupportActionModeWrapper.CallbackWrapper(this$0.mContext, paramCallback);
    android.support.v7.view.ActionMode localActionMode = this$0.startSupportActionMode(paramCallback);
    if (localActionMode != null) {
      return paramCallback.getActionModeWrapper(localActionMode);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.AppCompatDelegateImplV14.AppCompatWindowCallbackV14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */