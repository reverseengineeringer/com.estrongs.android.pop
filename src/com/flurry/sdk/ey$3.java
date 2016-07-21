package com.flurry.sdk;

import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;

class ey$3
  implements View.OnClickListener
{
  ey$3(ey paramey, Context paramContext) {}
  
  public void onClick(View paramView)
  {
    ey.b(b).dismiss();
    if (ey.c(b)) {
      if (!TextUtils.isEmpty(ey.d(b).getText().toString())) {
        ((es)ey.a(b)).a(ey.d(b).getText().toString());
      }
    }
    for (;;)
    {
      ey.a(b).d(ey.f(b).getText().toString());
      ey.a(b).a(a);
      return;
      if (!TextUtils.isEmpty(ey.e(b).getText().toString())) {
        ((ev)ey.a(b)).a(ey.e(b).getText().toString());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ey.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */