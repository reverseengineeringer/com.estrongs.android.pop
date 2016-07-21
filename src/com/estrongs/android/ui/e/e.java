package com.estrongs.android.ui.e;

import android.support.v7.app.AppCompatActivity;
import android.support.v7.view.WindowCallbackWrapper;
import android.view.KeyEvent;
import android.view.Window.Callback;
import java.lang.ref.WeakReference;

class e
  extends WindowCallbackWrapper
{
  private WeakReference<AppCompatActivity> b;
  
  public e(d paramd, Window.Callback paramCallback, AppCompatActivity paramAppCompatActivity)
  {
    super(paramCallback);
    b = new WeakReference(paramAppCompatActivity);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    int i = paramKeyEvent.getKeyCode();
    AppCompatActivity localAppCompatActivity = (AppCompatActivity)b.get();
    if ((localAppCompatActivity != null) && (i == 82) && (localAppCompatActivity.dispatchKeyEvent(paramKeyEvent))) {
      return true;
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */