package com.estrongs.android.ui.dialog;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;

class fj
  implements View.OnClickListener
{
  fj(fh paramfh, DialogInterface.OnClickListener paramOnClickListener) {}
  
  public void onClick(View paramView)
  {
    paramView = new AlertDialog.Builder(fh.d(b));
    paramView.setItems((CharSequence[])fh.a(b), a);
    paramView.setNegativeButton(2131427340, new fk(this));
    paramView.setTitle(2131428006);
    paramView.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.fj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */