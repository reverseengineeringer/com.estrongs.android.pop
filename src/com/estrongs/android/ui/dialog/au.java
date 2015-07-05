package com.estrongs.android.ui.dialog;

import android.view.View;
import android.widget.EditText;
import android.widget.RadioButton;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.view.ea;

class au
  extends ea
{
  RadioButton a = (RadioButton)k(2131361968);
  RadioButton b = (RadioButton)k(2131361976);
  EditText c = (EditText)k(2131361965);
  EditText d = (EditText)k(2131361971);
  EditText e = (EditText)k(2131361973);
  EditText f = (EditText)k(2131361978);
  
  public au(ap paramap, ESActivity paramESActivity)
  {
    super(paramESActivity);
    k(2131361964).setOnClickListener(new av(this, paramap));
    k(2131361972).setOnClickListener(new aw(this, paramap));
    a.setOnCheckedChangeListener(new ax(this, paramap));
    b.setOnCheckedChangeListener(new ay(this, paramap));
    a.setChecked(true);
  }
  
  protected int a()
  {
    return 2130903062;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */