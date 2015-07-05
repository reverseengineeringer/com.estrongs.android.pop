package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.text.ClipboardManager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.estrongs.android.ui.view.ag;

class ho
  implements View.OnClickListener
{
  ho(hn paramhn, Context paramContext) {}
  
  public void onClick(View paramView)
  {
    paramView = (TextView)hn.a(b, 2131362173);
    if (paramView != null)
    {
      paramView = paramView.getText().toString();
      Object localObject = a;
      Context localContext = a;
      localObject = (ClipboardManager)((Context)localObject).getSystemService("clipboard");
      if (localObject != null)
      {
        ((ClipboardManager)localObject).setText(paramView);
        ag.a(a, 2131428216, 0);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ho
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */