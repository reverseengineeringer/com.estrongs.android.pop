package com.estrongs.android.pop.view;

import android.os.Handler;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.EditText;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.view.aw;

class bd
  implements View.OnKeyListener
{
  bd(FileExplorerActivity paramFileExplorerActivity) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 0) && (paramInt == 66))
    {
      if (((FileExplorerActivity.B(a).getText() == null) || (FileExplorerActivity.B(a).getText().length() == 0)) && ("all".equals(a.y().ab())))
      {
        ag.a(a, 2131428425, 0);
        a.h.post(new be(this));
        return true;
      }
      paramView = a.y();
      if ((paramView != null) && (!a.f(a.z()))) {
        a.a("externalstorage://", paramView.ab(), FileExplorerActivity.B(a).getText().toString());
      }
      a.u();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */