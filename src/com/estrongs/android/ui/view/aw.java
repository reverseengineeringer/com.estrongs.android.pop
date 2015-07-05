package com.estrongs.android.ui.view;

import android.text.ClipboardManager;
import android.view.View;
import android.view.View.OnClickListener;
import java.text.MessageFormat;

class aw
  implements View.OnClickListener
{
  aw(au paramau, ClipboardManager paramClipboardManager) {}
  
  public void onClick(View paramView)
  {
    a.setText(b.i);
    paramView = au.b(b, 2131427962);
    ag.a(b.ar(), MessageFormat.format(paramView, new Object[] { "SHA-1" }), 1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */