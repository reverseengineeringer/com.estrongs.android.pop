package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.view.at;

public class v
  extends cg
  implements at
{
  protected boolean a = false;
  protected n b;
  View c;
  
  public v(Context paramContext)
  {
    super(paramContext);
    setCanceledOnTouchOutside(false);
  }
  
  public void a(Configuration paramConfiguration) {}
  
  public void a(n paramn)
  {
    b = paramn;
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
 * Qualified Name:     com.estrongs.android.ui.pcs.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */