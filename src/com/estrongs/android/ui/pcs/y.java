package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.view.ax;

public class y
  extends ci
  implements ax
{
  protected boolean a = false;
  protected q b;
  View c;
  
  public y(Context paramContext)
  {
    super(paramContext);
    setCanceledOnTouchOutside(false);
  }
  
  public void a(Configuration paramConfiguration) {}
  
  public void a(q paramq)
  {
    b = paramq;
  }
  
  public View c()
  {
    return c;
  }
  
  public boolean d()
  {
    return a;
  }
  
  public void dismiss()
  {
    super.dismiss();
  }
  
  public boolean e()
  {
    return false;
  }
  
  public void requestInputMethod()
  {
    getWindow().setSoftInputMode(5);
  }
  
  public void setContentView(View paramView)
  {
    mContentContainer.removeAllViews();
    super.setContentView(paramView);
    c = paramView;
    c.requestFocus();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */