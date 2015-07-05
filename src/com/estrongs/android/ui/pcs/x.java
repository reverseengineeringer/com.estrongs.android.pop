package com.estrongs.android.ui.pcs;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import android.widget.EditText;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.a;

class x
  implements DialogInterface.OnClickListener
{
  x(w paramw, EditText paramEditText1, EditText paramEditText2) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      paramDialogInterface = a.getText().toString();
      Object localObject = b.getText().toString();
      if ((paramDialogInterface.length() == 0) || (((String)localObject).length() == 0))
      {
        ag.a(w.a(c), 2131428590, 0);
        return;
      }
      if (!w.a(c, paramDialogInterface))
      {
        ag.a(w.a(c), 2131428576, 0);
        return;
      }
      if ((((String)localObject).length() < 6) || (TextUtils.isDigitsOnly((CharSequence)localObject)))
      {
        ag.a(w.a(c), 2131428617, 0);
        return;
      }
      w.b(c, paramDialogInterface);
      w.c(c, (String)localObject);
      w.b(c);
      localObject = a.a();
      if (localObject != null)
      {
        ((a)localObject).c("Press_UPInfo_Confirm", "Press_UPInfo_Confirm");
        ((a)localObject).e("UPInfo_Confirm_UV", "UPInfo_Confirm_UV");
        paramDialogInterface = "Next_Phone_Get";
        if (!w.c(c)) {
          paramDialogInterface = "Next_Phone_No";
        }
        ((a)localObject).f(paramDialogInterface, paramDialogInterface);
      }
      return;
    }
    catch (Exception paramDialogInterface) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */