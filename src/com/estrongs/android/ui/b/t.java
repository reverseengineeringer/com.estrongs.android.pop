package com.estrongs.android.ui.b;

import android.app.Activity;
import android.text.ClipboardManager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.estrongs.android.ui.view.ak;

class t
  implements View.OnClickListener
{
  t(q paramq, Activity paramActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = (TextView)q.a(b, 2131624743);
    if (paramView != null)
    {
      paramView = paramView.getText().toString();
      Object localObject = a;
      Activity localActivity = a;
      localObject = (ClipboardManager)((Activity)localObject).getSystemService("clipboard");
      if (localObject != null)
      {
        ((ClipboardManager)localObject).setText(paramView);
        ak.a(a, 2131231396, 0);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */