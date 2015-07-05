package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.text.ClipboardManager;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;

class hz
  implements View.OnClickListener
{
  hz(hn paramhn, Context paramContext) {}
  
  public void onClick(View paramView)
  {
    paramView = hn.a(b);
    if (!am.ba(hn.a(b))) {
      paramView = am.E(paramView);
    }
    for (;;)
    {
      if (paramView != null)
      {
        Object localObject = a;
        Context localContext = a;
        localObject = (ClipboardManager)((Context)localObject).getSystemService("clipboard");
        if (localObject != null)
        {
          ((ClipboardManager)localObject).setText(paramView);
          ag.a(a, 2131428216, 0);
        }
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */