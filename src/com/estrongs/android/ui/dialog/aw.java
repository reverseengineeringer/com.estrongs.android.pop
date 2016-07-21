package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.view.View;
import android.widget.EditText;
import android.widget.RadioButton;
import com.estrongs.android.view.gf;

class aw
  extends gf
{
  RadioButton a = (RadioButton)b(2131624478);
  RadioButton b = (RadioButton)b(2131624486);
  EditText c = (EditText)b(2131624475);
  EditText d = (EditText)b(2131624481);
  EditText e = (EditText)b(2131624483);
  EditText f = (EditText)b(2131624488);
  
  public aw(ar paramar, Activity paramActivity)
  {
    super(paramActivity);
    b(2131624474).setOnClickListener(new ax(this, paramar));
    b(2131624482).setOnClickListener(new ay(this, paramar));
    a.setOnCheckedChangeListener(new az(this, paramar));
    b.setOnCheckedChangeListener(new ba(this, paramar));
    a.setChecked(true);
  }
  
  protected int a()
  {
    return 2130903126;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */