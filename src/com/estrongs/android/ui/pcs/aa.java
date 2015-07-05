package com.estrongs.android.ui.pcs;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.a;

class aa
  implements DialogInterface.OnClickListener
{
  aa(w paramw, EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      if (a.getText().toString().length() == 0)
      {
        ag.a(w.a(b), 2131428572, 0);
        return;
      }
      w.d(b, a.getText().toString());
      paramDialogInterface = a.a();
      if (paramDialogInterface != null)
      {
        paramDialogInterface.c("Press_Verify_Confirm", "Press_Verify_Confirm");
        paramDialogInterface.e("Verify_Confirm_UV", "Verify_Confirm_UV");
        return;
      }
    }
    catch (Exception paramDialogInterface) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */