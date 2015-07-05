package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.res.Resources;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.ui.d.a;

public class f
  extends cg
{
  dg a = null;
  Button b;
  
  public f(Activity paramActivity)
  {
    super(paramActivity);
    setTitle(paramActivity.getResources().getString(2131428466));
    LinearLayout localLinearLayout = new LinearLayout(mContext);
    localLinearLayout.setFocusable(false);
    int i = a.a(mContext, 20.0F);
    localLinearLayout.setPadding(i, i / 2, i, i / 2);
    localLinearLayout.addView(a.b(), new LinearLayout.LayoutParams(-1, -2));
    setContentView(localLinearLayout);
    b = setConfirmButton(paramActivity.getText(2131427339), new g(this));
    setCancelButton(paramActivity.getText(2131427340), new h(this));
    requestInputMethod();
  }
  
  public void a(i parami)
  {
    a.a(parami);
  }
  
  public void show()
  {
    super.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */