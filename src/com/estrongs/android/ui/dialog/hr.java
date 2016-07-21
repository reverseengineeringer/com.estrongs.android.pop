package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.text.ClipboardManager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.estrongs.android.ui.view.ak;

class hr
  implements View.OnClickListener
{
  hr(hq paramhq, Context paramContext) {}
  
  public void onClick(View paramView)
  {
    paramView = (TextView)hq.a(b, 2131624738);
    if (paramView != null)
    {
      paramView = paramView.getText().toString();
      Object localObject = a;
      Context localContext = a;
      localObject = (ClipboardManager)((Context)localObject).getSystemService("clipboard");
      if (localObject != null)
      {
        ((ClipboardManager)localObject).setText(paramView);
        ak.a(a, 2131231282, 0);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */