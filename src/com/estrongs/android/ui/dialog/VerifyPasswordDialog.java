package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface.OnDismissListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import java.util.ArrayList;
import java.util.List;

public class VerifyPasswordDialog
{
  private static VerifyPasswordDialog e = null;
  private ci a;
  private Context b;
  private lc c;
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
      a.setTitle(2131231615);
      return;
    }
    a.setTitle(2131231636);
  }
  
  private void c()
  {
    View localView = k.a(b).inflate(2130903348, null);
    ((TextView)localView.findViewById(2131624779)).setVisibility(8);
    EditText localEditText = (EditText)localView.findViewById(2131625231);
    localView.findViewById(2131625225).setVisibility(8);
    localView.findViewById(2131625232).setVisibility(8);
    localView.findViewById(2131625228).setVisibility(8);
    a = new cv(b).a(2131231615).a(localView).b(2131231270, new kz(this, localEditText)).c(2131231265, new ky(this)).b();
    a.setOnKeyListener(new la(this));
    a.getWindow().setSoftInputMode(5);
    a.setCanceledOnTouchOutside(false);
  }
  
  public void a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    d.add(paramOnDismissListener);
    a.setOnDismissListener(new lb(this));
  }
  
  public void a(lc paramlc)
  {
    c = paramlc;
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