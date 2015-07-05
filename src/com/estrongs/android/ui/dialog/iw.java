package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.fs.util.j;

public class iw
  extends cg
{
  public iw(Context paramContext, long paramLong1, long paramLong2)
  {
    this(paramContext, paramLong1, paramLong2, null, null);
  }
  
  public iw(Context paramContext, long paramLong1, long paramLong2, String paramString1, String paramString2)
  {
    super(paramContext);
    paramContext = g.a(paramContext).inflate(2130903253, null);
    ((TextView)paramContext.findViewById(2131362740)).setText(j.c(paramLong1));
    ((TextView)paramContext.findViewById(2131362741)).setText(j.c(paramLong2));
    if (paramString2 != null) {
      ((TextView)paramContext.findViewById(2131361822)).setText(paramString2);
    }
    setContentView(paramContext);
    if (paramString1 == null)
    {
      setTitle(2131427348);
      return;
    }
    setTitle(paramString1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.iw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */