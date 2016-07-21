package com.estrongs.android.ui.dialog;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;

class fm
  implements View.OnClickListener
{
  fm(fk paramfk, DialogInterface.OnClickListener paramOnClickListener) {}
  
  public void onClick(View paramView)
  {
    paramView = new AlertDialog.Builder(fk.d(b));
    paramView.setItems((CharSequence[])fk.a(b), a);
    paramView.setNegativeButton(2131231265, new fn(this));
    paramView.setTitle(2131232284);
    paramView.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.fm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */