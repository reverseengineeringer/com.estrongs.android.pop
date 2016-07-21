package android.support.v7.app;

import android.content.Context;
import android.view.Window;
import android.view.Window.Callback;

class AppCompatDelegateImplV23
  extends AppCompatDelegateImplV14
{
  AppCompatDelegateImplV23(Context paramContext, Window paramWindow, AppCompatCallback paramAppCompatCallback)
  {
    super(paramContext, paramWindow, paramAppCompatCallback);
  }
  
  Window.Callback wrapWindowCallback(Window.Callback paramCallback)
  {
    return new AppCompatDelegateImplV23.AppCompatWindowCallbackV23(this, paramCallback);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.AppCompatDelegateImplV23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */