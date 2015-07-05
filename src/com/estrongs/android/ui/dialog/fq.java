package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.widget.GridView;
import android.widget.LinearLayout;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.a.d;

public class fq
  extends cg
{
  private static fq a = null;
  private LinearLayout b;
  
  public fq(Context paramContext)
  {
    super(paramContext);
    setTitle(mContext.getResources().getString(2131427361));
    b = ((LinearLayout)g.a(mContext).inflate(2130903274, null));
    setContentView(b);
    paramContext = (GridView)b.findViewById(2131362817);
    paramContext.setAdapter(new d(mContext));
    paramContext.setOnItemClickListener(new fr(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.fq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */