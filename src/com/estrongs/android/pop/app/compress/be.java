package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.dialog.cg;

public class be
  extends cg
{
  private EditText a;
  private CheckBox b;
  private boolean c = true;
  
  public be(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramContext);
    c = paramBoolean1;
    paramContext = g.a(paramContext).inflate(2130903208, null);
    b = ((CheckBox)paramContext.findViewById(2131362588));
    b.setOnCheckedChangeListener(new bf(this));
    if (paramBoolean2) {
      b.setVisibility(0);
    }
    for (;;)
    {
      a = ((EditText)paramContext.findViewById(2131361868));
      int i = a.getInputType();
      CheckBox localCheckBox = (CheckBox)paramContext.findViewById(2131361869);
      localCheckBox.setVisibility(0);
      localCheckBox.setOnCheckedChangeListener(new bg(this, i));
      a.setHint("");
      setContentView(paramContext);
      setTitle(2131427896);
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
 * Qualified Name:     com.estrongs.android.pop.app.compress.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */