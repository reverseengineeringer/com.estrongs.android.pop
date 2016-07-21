package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.text.ClipboardManager;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;

class ic
  implements View.OnClickListener
{
  ic(hq paramhq, Context paramContext) {}
  
  public void onClick(View paramView)
  {
    paramView = hq.a(b);
    if (!ap.bl(hq.a(b))) {
      paramView = ap.G(paramView);
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
          ak.a(a, 2131231282, 0);
        }
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */