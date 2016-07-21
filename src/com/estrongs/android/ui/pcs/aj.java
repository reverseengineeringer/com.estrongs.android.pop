package com.estrongs.android.ui.pcs;

import android.view.View;
import android.widget.EditText;

class aj
  implements Runnable
{
  aj(ai paramai) {}
  
  public void run()
  {
    z.m(a.a);
    if ((z.h(a.a) != null) && (z.h(a.a).length() != 0))
    {
      EditText localEditText = (EditText)z.d(a.a).findViewById(2131624477);
      localEditText.setText(z.h(a.a));
      localEditText.setVisibility(8);
    }
    z.n(a.a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */