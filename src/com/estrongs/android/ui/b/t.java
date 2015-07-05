package com.estrongs.android.ui.b;

import android.text.ClipboardManager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.view.ag;

class t
  implements View.OnClickListener
{
  t(q paramq, ESActivity paramESActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = (TextView)q.a(b, 2131362178);
    if (paramView != null)
    {
      paramView = paramView.getText().toString();
      Object localObject = a;
      ESActivity localESActivity = a;
      localObject = (ClipboardManager)((ESActivity)localObject).getSystemService("clipboard");
      if (localObject != null)
      {
        ((ClipboardManager)localObject).setText(paramView);
        ag.a(a, 2131428238, 0);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */