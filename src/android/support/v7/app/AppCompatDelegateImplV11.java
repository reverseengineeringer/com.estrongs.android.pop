package android.support.v7.app;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.Window;

class AppCompatDelegateImplV11
  extends AppCompatDelegateImplV7
{
  AppCompatDelegateImplV11(Context paramContext, Window paramWindow, AppCompatCallback paramAppCompatCallback)
  {
    super(paramContext, paramWindow, paramAppCompatCallback);
  }
  
  View callActivityOnCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.AppCompatDelegateImplV11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */