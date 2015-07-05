package com.estrongs.android.ui.e;

import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.estrongs.android.view.a.a;

class jm
  implements View.OnClickListener
{
  jm(jk paramjk, Button paramButton, a parama) {}
  
  public void onClick(View paramView)
  {
    if ((a.isEnabled()) && (b.c() != null)) {
      b.c().onMenuItemClick(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.jm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */