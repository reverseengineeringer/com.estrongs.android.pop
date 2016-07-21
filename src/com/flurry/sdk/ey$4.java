package com.flurry.sdk;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.RelativeLayout;

class ey$4
  implements View.OnClickListener
{
  ey$4(ey paramey, Context paramContext) {}
  
  public void onClick(View paramView)
  {
    if (ey.c(b)) {
      ey.a(b, ey.d(b).getText().toString());
    }
    for (;;)
    {
      ey.g(b).removeAllViews();
      ey.a(b, a, ey.g(b));
      return;
      ey.b(b, ey.e(b).getText().toString());
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ey.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */