package android.support.v7.app;

import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Window.Callback;

class AppCompatDelegateImplV23$AppCompatWindowCallbackV23
  extends AppCompatDelegateImplV14.AppCompatWindowCallbackV14
{
  AppCompatDelegateImplV23$AppCompatWindowCallbackV23(AppCompatDelegateImplV23 paramAppCompatDelegateImplV23, Window.Callback paramCallback)
  {
    super(paramAppCompatDelegateImplV23, paramCallback);
  }
  
  public ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback)
  {
    return null;
  }
  
  public ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback, int paramInt)
  {
    if (this$0.isHandleNativeActionModesEnabled()) {}
    switch (paramInt)
    {
    default: 
      return super.onWindowStartingActionMode(paramCallback, paramInt);
    }
    return startAsSupportActionMode(paramCallback);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.AppCompatDelegateImplV23.AppCompatWindowCallbackV23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */