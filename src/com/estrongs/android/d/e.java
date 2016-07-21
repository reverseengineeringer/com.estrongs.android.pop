package com.estrongs.android.d;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.dialog.ci;

public class e
  extends ci
{
  private View a;
  private boolean b = false;
  private h c = null;
  private CheckBox d;
  
  public e(Context paramContext, h paramh, boolean paramBoolean)
  {
    super(paramContext);
    c = paramh;
    a = k.a(paramContext).inflate(2130903222, null);
    setContentView(a);
    d = ((CheckBox)a.findViewById(2131624822));
    if (!paramBoolean) {
      d.setVisibility(8);
    }
    setConfirmButton(paramContext.getText(2131231721), new f(this));
    setCancelButton(paramContext.getText(2131231272), new g(this));
    setCancelable(false);
  }
  
  public void dismiss()
  {
    super.dismiss();
    c.a(b, d.isChecked());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.d.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */