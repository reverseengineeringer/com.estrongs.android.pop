package com.estrongs.android.ui.f;

import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.View.OnClickListener;

class d
  implements View.OnClickListener
{
  d(a parama, com.estrongs.android.view.a.a parama1) {}
  
  public void onClick(View paramView)
  {
    try
    {
      a.c().onMenuItemClick(a);
      a.a(b);
      return;
    }
    catch (Exception paramView)
    {
      paramView.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.f.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */