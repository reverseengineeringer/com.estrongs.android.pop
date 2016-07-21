package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.fs.util.j;

public class jf
  extends ci
{
  public jf(Context paramContext, long paramLong1, long paramLong2)
  {
    this(paramContext, paramLong1, paramLong2, null, null);
  }
  
  public jf(Context paramContext, long paramLong1, long paramLong2, String paramString1, String paramString2)
  {
    super(paramContext);
    paramContext = k.a(paramContext).inflate(2130903428, null);
    ((TextView)paramContext.findViewById(2131625514)).setText(j.c(paramLong1));
    ((TextView)paramContext.findViewById(2131625515)).setText(j.c(paramLong2));
    if (paramString2 != null) {
      ((TextView)paramContext.findViewById(2131624200)).setText(paramString2);
    }
    setContentView(paramContext);
    if (paramString1 == null)
    {
      setTitle(2131230838);
      return;
    }
    setTitle(paramString1);
  }
  
  public void show()
  {
    setConfirmButton(mContext.getString(2131231570), new jg(this));
    setCancelButton(mContext.getString(2131231265), null);
    super.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.jf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */