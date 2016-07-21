package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.dialog.ci;

public class cb
  extends ci
{
  private EditText a;
  private CheckBox b;
  private boolean c = true;
  
  public cb(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramContext);
    c = paramBoolean1;
    paramContext = k.a(paramContext).inflate(2130903369, null);
    b = ((CheckBox)paramContext.findViewById(2131625339));
    b.setOnCheckedChangeListener(new cc(this));
    if (paramBoolean2) {
      b.setVisibility(0);
    }
    for (;;)
    {
      a = ((EditText)paramContext.findViewById(2131624366));
      int i = a.getInputType();
      CheckBox localCheckBox = (CheckBox)paramContext.findViewById(2131624367);
      localCheckBox.setVisibility(0);
      localCheckBox.setOnCheckedChangeListener(new cd(this, i));
      a.setHint("");
      setContentView(paramContext);
      setTitle(2131231636);
      return;
      b.setVisibility(8);
    }
  }
  
  public String a()
  {
    String str = a.getText().toString();
    if (!c) {
      a.setText("");
    }
    return str;
  }
  
  public boolean b()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */