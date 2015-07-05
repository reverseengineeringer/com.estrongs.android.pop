package com.estrongs.android.ui.addressbar;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

class d
  implements View.OnKeyListener
{
  d(AdvancedAddressBar paramAdvancedAddressBar) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((a.isFocused()) && (paramKeyEvent.getAction() == 0))
    {
      if (paramInt == 21)
      {
        paramInt = AdvancedAddressBar.b(a) - 1;
        if ((paramInt >= 0) && (paramInt < AdvancedAddressBar.d(a)))
        {
          AdvancedAddressBar.a(a, paramInt);
          a.invalidate();
          return true;
        }
        return false;
      }
      if (paramInt == 22)
      {
        paramInt = AdvancedAddressBar.b(a) + 1;
        if ((paramInt >= 0) && (paramInt < AdvancedAddressBar.d(a)))
        {
          AdvancedAddressBar.a(a, paramInt);
          a.invalidate();
          return true;
        }
        return false;
      }
      if (paramInt == 23)
      {
        if ((AdvancedAddressBar.b(a) >= 0) && (AdvancedAddressBar.b(a) < AdvancedAddressBar.d(a)) && (AdvancedAddressBar.f(a) != null)) {
          AdvancedAddressBar.f(a).a(a, AdvancedAddressBar.b(a), AdvancedAddressBar.d(a));
        }
        AdvancedAddressBar.e(a);
        a.invalidate();
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.addressbar.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */