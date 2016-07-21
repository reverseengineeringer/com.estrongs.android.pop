package com.estrongs.android.b.a.b.a;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;
import com.estrongs.android.pop.app.cleaner.i;

class c
  implements View.OnClickListener
{
  c(a parama, Context paramContext, i parami, com.estrongs.android.b.a.a parama1) {}
  
  public void onClick(View paramView)
  {
    View localView = View.inflate(a, 2130903137, null);
    PopupWindow localPopupWindow = new PopupWindow(localView, -2, -2, true);
    localView.setOnClickListener(new d(this, localPopupWindow));
    localPopupWindow.setTouchable(true);
    localPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
    localPopupWindow.showAsDropDown(paramView);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.b.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */