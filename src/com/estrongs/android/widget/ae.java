package com.estrongs.android.widget;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.view.cc;
import com.estrongs.fs.i;

public class ae
  extends g
{
  private Context a;
  private cc i = null;
  private DialogInterface.OnClickListener j = null;
  
  public ae(Activity paramActivity, String paramString, i parami, int paramInt)
  {
    super(paramActivity, paramString, parami, paramInt);
    a = paramActivity;
  }
  
  private void m()
  {
    a(new af(this));
    if (j == null)
    {
      a(a.getString(2131427340), null);
      return;
    }
    c(a.getString(2131427340), null);
    b(a.getString(2131427339), j);
  }
  
  public void a(cc paramcc, DialogInterface.OnClickListener paramOnClickListener, ac paramac)
  {
    i = paramcc;
    j = paramOnClickListener;
    a(paramac);
    m();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */