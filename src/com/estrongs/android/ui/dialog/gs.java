package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.a.e;

public class gs
  extends cg
{
  private e a;
  private gx b;
  private View c;
  private View d;
  private View e;
  private final int f = 4;
  
  public gs(Context paramContext)
  {
    super(paramContext);
    setTitle(2131427391);
    a(false, 0);
  }
  
  public gs(Context paramContext, int paramInt)
  {
    super(paramContext);
    setTitle(2131427391);
    a(true, paramInt);
  }
  
  private void a(View paramView, int paramInt)
  {
    b(paramView.findViewById(2131362079), paramInt * 4);
    b(paramView.findViewById(2131362080), paramInt * 4 + 1);
    b(paramView.findViewById(2131362081), paramInt * 4 + 2);
    b(paramView.findViewById(2131362088), paramInt * 4 + 3);
  }
  
  private void b(View paramView, int paramInt)
  {
    a.getView(paramInt, paramView, null).setOnClickListener(new gt(this, paramInt));
  }
  
  public void a(gx paramgx)
  {
    b = paramgx;
  }
  
  protected void a(boolean paramBoolean, int paramInt)
  {
    View localView = g.a(mContext).inflate(2130903099, null);
    localView.findViewById(2131362077).setVisibility(8);
    localView.findViewById(2131362084).setVisibility(8);
    c = localView.findViewById(2131362086);
    d = c.findViewById(2131362078);
    e = c.findViewById(2131362082);
    a = new e(mContext);
    if (paramBoolean) {
      a.a(paramInt);
    }
    a(d, 0);
    a(e, 1);
    setContentView(localView);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.gs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */