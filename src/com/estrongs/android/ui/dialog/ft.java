package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.widget.GridView;
import android.widget.LinearLayout;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.adapter.d;

public class ft
  extends ci
{
  private static ft a = null;
  private LinearLayout b;
  
  public ft(Context paramContext)
  {
    super(paramContext);
    setTitle(mContext.getResources().getString(2131230867));
    b = ((LinearLayout)k.a(mContext).inflate(2130903467, null));
    setContentView(b);
    paramContext = (GridView)b.findViewById(2131625655);
    paramContext.setAdapter(new d(mContext));
    paramContext.setOnItemClickListener(new fu(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */