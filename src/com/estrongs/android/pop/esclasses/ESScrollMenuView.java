package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.ui.e.io;
import com.estrongs.android.view.a.a;

public class ESScrollMenuView
  extends ESScrollView
{
  io a;
  private Context c;
  private int d = 2131362219;
  
  public ESScrollMenuView(Context paramContext)
  {
    super(paramContext);
    c = paramContext;
  }
  
  public ESScrollMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    c = paramContext;
  }
  
  public ESScrollMenuView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    c = paramContext;
  }
  
  public void a()
  {
    if (a != null) {
      a.j();
    }
    a = null;
  }
  
  public void a(int paramInt)
  {
    d = paramInt;
  }
  
  public void a(a parama, MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    LinearLayout.LayoutParams localLayoutParams;
    if (a == null)
    {
      a = new io(c, true);
      localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
      View localView = findViewById(d);
      if (localView == null) {
        break label79;
      }
      ((LinearLayout)localView).addView(a.a(), localLayoutParams);
    }
    for (;;)
    {
      a.a(parama.a(paramOnMenuItemClickListener), true);
      return;
      label79:
      addView(a.a(), localLayoutParams);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESScrollMenuView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */