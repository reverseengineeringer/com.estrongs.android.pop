package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.text.ClipboardManager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.estrongs.android.ui.view.ag;

class ec
  implements View.OnClickListener
{
  ec(eb parameb, Activity paramActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = (TextView)eb.a(b, 2131362173);
    if (paramView != null)
    {
      paramView = paramView.getText().toString();
      Object localObject = a;
      Activity localActivity = a;
      localObject = (ClipboardManager)((Activity)localObject).getSystemService("clipboard");
      if (localObject != null)
      {
        ((ClipboardManager)localObject).setText(paramView);
        ag.a(a, 2131428216, 0);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */