package com.estrongs.android.ui.addressbar;

import android.view.View;
import android.view.View.OnLongClickListener;

class d
  implements View.OnLongClickListener
{
  d(AdvancedAddressBar paramAdvancedAddressBar) {}
  
  public boolean onLongClick(View paramView)
  {
    if ((AdvancedAddressBar.b(a) != -1) && (AdvancedAddressBar.c(a) != null))
    {
      AdvancedAddressBar.c(a).a(a, AdvancedAddressBar.b(a), AdvancedAddressBar.d(a));
      AdvancedAddressBar.e(a);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.addressbar.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */