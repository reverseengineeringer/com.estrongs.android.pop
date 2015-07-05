package com.estrongs.android.ui.pcs;

import android.view.View;
import android.widget.EditText;

class ag
  implements Runnable
{
  ag(af paramaf) {}
  
  public void run()
  {
    w.m(a.a);
    if ((w.h(a.a) != null) && (w.h(a.a).length() != 0))
    {
      EditText localEditText = (EditText)w.d(a.a).findViewById(2131361967);
      localEditText.setText(w.h(a.a));
      localEditText.setVisibility(8);
    }
    w.n(a.a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */