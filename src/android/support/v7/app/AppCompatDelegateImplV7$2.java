package android.support.v7.app;

import android.support.v4.view.bv;
import android.support.v4.view.cn;
import android.support.v4.view.fr;
import android.view.View;

class AppCompatDelegateImplV7$2
  implements bv
{
  AppCompatDelegateImplV7$2(AppCompatDelegateImplV7 paramAppCompatDelegateImplV7) {}
  
  public fr onApplyWindowInsets(View paramView, fr paramfr)
  {
    int i = paramfr.b();
    int j = AppCompatDelegateImplV7.access$300(this$0, i);
    fr localfr = paramfr;
    if (i != j) {
      localfr = paramfr.a(paramfr.a(), j, paramfr.c(), paramfr.d());
    }
    return cn.a(paramView, localfr);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.AppCompatDelegateImplV7.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */