package com.estrongs.android.ui.controller;

import android.text.Editable;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.EditText;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.view.cr;

class bb
  implements View.OnKeyListener
{
  bb(aj paramaj) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 0) && (paramInt == 66))
    {
      paramView = a.a.O();
      if (paramView != null) {}
    }
    else
    {
      return false;
    }
    if (((aj.b(a).getText() == null) || (aj.b(a).getText().length() == 0)) && ("all".equals(paramView.aq())))
    {
      ak.a(a.a, 2131231616, 0);
      a.a(new bc(this));
      return true;
    }
    a.a.e(a.q());
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */