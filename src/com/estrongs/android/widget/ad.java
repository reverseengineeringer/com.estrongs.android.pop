package com.estrongs.android.widget;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.view.dx;
import com.estrongs.fs.i;

public class ad
  extends f
{
  private Context a;
  private dx i = null;
  private DialogInterface.OnClickListener j = null;
  
  public ad(Activity paramActivity, String paramString, i parami, int paramInt)
  {
    super(paramActivity, paramString, parami, paramInt);
    a = paramActivity;
  }
  
  private void m()
  {
    a(new ae(this));
    if (j == null)
    {
      a(a.getString(2131231265), null);
      return;
    }
    c(a.getString(2131231265), null);
    b(a.getString(2131231270), j);
  }
  
  public void a(dx paramdx, DialogInterface.OnClickListener paramOnClickListener, ab paramab)
  {
    i = paramdx;
    j = paramOnClickListener;
    a(paramab);
    m();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */