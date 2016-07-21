package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.view.MaxWidthLinearLayout;

public class er
  extends ci
{
  en a = null;
  Button b;
  boolean c = false;
  
  public er(Activity paramActivity, String paramString1, String paramString2)
  {
    super(paramActivity);
    a = new en(paramActivity, this, paramString2);
    setTitle(paramString1);
    paramString1 = new LinearLayout(mContext);
    paramString1.setFocusable(false);
    int i = g.a(mContext, 20.0F);
    paramString2 = new LinearLayout.LayoutParams(-1, -2);
    leftMargin = i;
    topMargin = (i / 2);
    rightMargin = i;
    bottomMargin = i;
    paramString1.addView(a.b(), paramString2);
    i = mBodyView.getPaddingLeft();
    mBodyView.setPadding(i, 0, i, 0);
    setContentView(paramString1);
    b = setConfirmButton(paramActivity.getText(2131231270), new es(this));
    setCancelButton(paramActivity.getText(2131231265), new et(this));
    requestInputMethod();
  }
  
  public void a(eu parameu)
  {
    a.a(parameu);
  }
  
  public void a(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void b(boolean paramBoolean)
  {
    a.a(paramBoolean);
  }
  
  public void show()
  {
    a.c();
    super.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.er
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */