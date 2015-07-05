package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface.OnDismissListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;
import java.util.ArrayList;
import java.util.List;

public class VerifyPasswordDialog
{
  private static VerifyPasswordDialog e = null;
  private cg a;
  private Context b;
  private kr c;
  private List<DialogInterface.OnDismissListener> d = new ArrayList();
  
  private VerifyPasswordDialog(Context paramContext, VerifyPasswordDialog.DialogType paramDialogType)
  {
    b = paramContext;
    c();
    a(paramDialogType);
  }
  
  public static VerifyPasswordDialog a(Context paramContext, VerifyPasswordDialog.DialogType paramDialogType)
  {
    if ((e != null) && (ea.isShowing())) {
      if (paramDialogType == VerifyPasswordDialog.DialogType.START) {
        e.a(paramDialogType);
      }
    }
    for (;;)
    {
      return e;
      e = new VerifyPasswordDialog(paramContext, paramDialogType);
    }
  }
  
  public static void a()
  {
    e = null;
  }
  
  private void a(VerifyPasswordDialog.DialogType paramDialogType)
  {
    if (paramDialogType == VerifyPasswordDialog.DialogType.NETWORK)
    {
      a.setTitle(2131427537);
      return;
    }
    a.setTitle(2131427896);
  }
  
  private void c()
  {
    View localView = g.a(b).inflate(2130903197, null);
    ((TextView)localView.findViewById(2131362193)).setVisibility(8);
    EditText localEditText = (EditText)localView.findViewById(2131362494);
    localView.findViewById(2131362488).setVisibility(8);
    localView.findViewById(2131362495).setVisibility(8);
    localView.findViewById(2131362491).setVisibility(8);
    a = new ct(b).a(2131427537).a(localView).b(2131427339, new ko(this, localEditText)).c(2131427340, new kn(this)).b();
    a.setOnKeyListener(new kp(this));
    a.getWindow().setSoftInputMode(5);
    a.setCanceledOnTouchOutside(false);
  }
  
  public void a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    d.add(paramOnDismissListener);
    a.setOnDismissListener(new kq(this));
  }
  
  public void a(kr paramkr)
  {
    c = paramkr;
  }
  
  public void b()
  {
    if (!a.isShowing()) {
      a.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.VerifyPasswordDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */