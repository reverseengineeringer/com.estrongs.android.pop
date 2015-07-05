package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.ui.d.a;

public class eo
  extends cg
{
  ek a = null;
  Button b;
  boolean c = false;
  
  public eo(Activity paramActivity, String paramString1, String paramString2)
  {
    super(paramActivity);
    a = new ek(paramActivity, this, paramString2);
    setTitle(paramString1);
    paramString1 = new LinearLayout(mContext);
    paramString1.setFocusable(false);
    int i = a.a(mContext, 20.0F);
    paramString1.setPadding(i, i / 2, i, i / 2);
    paramString1.addView(a.b(), new LinearLayout.LayoutParams(-1, -2));
    setContentView(paramString1);
    b = setConfirmButton(paramActivity.getText(2131427339), new ep(this));
    setCancelButton(paramActivity.getText(2131427340), new eq(this));
    requestInputMethod();
  }
  
  public void a(er paramer)
  {
    a.a(paramer);
  }
  
  public void a(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void b(boolean paramBoolean)
  {
    a.a(paramBoolean);
  }
  
  public void c(boolean paramBoolean)
  {
    a.b(paramBoolean);
  }
  
  public void show()
  {
    a.c();
    super.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.eo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */