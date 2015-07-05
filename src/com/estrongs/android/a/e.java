package com.estrongs.android.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import com.estrongs.android.ui.dialog.cg;

public class e
  extends cg
{
  private View a;
  private boolean b = false;
  private h c = null;
  private CheckBox d;
  
  public e(Context paramContext, h paramh, boolean paramBoolean)
  {
    super(paramContext);
    c = paramh;
    a = com.estrongs.android.pop.esclasses.g.a(paramContext).inflate(2130903123, null);
    setContentView(a);
    d = ((CheckBox)a.findViewById(2131362229));
    if (!paramBoolean) {
      d.setVisibility(8);
    }
    setConfirmButton(paramContext.getText(2131427401), new f(this));
    setCancelButton(paramContext.getText(2131428268), new g(this));
    setCancelable(false);
  }
  
  public void dismiss()
  {
    super.dismiss();
    c.a(b, d.isChecked());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */