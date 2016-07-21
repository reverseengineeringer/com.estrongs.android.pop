package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.ui.e.im;
import com.estrongs.android.view.a.a;

public class ESScrollMenuView
  extends ESScrollView
{
  im a;
  private Context c;
  private boolean d;
  private int e = 2131624809;
  
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
  
  public void a(a parama, MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    LinearLayout.LayoutParams localLayoutParams;
    if (a == null)
    {
      a = new im(c, true);
      a.b(d);
      localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
      View localView = findViewById(e);
      if (localView == null) {
        break label90;
      }
      ((LinearLayout)localView).addView(a.a(), localLayoutParams);
    }
    for (;;)
    {
      a.a(parama.a(paramOnMenuItemClickListener), true);
      return;
      label90:
      addView(a.a(), localLayoutParams);
    }
  }
  
  public void setPanelViewId(int paramInt)
  {
    e = paramInt;
  }
  
  public void setShowIcon(boolean paramBoolean)
  {
    d = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESScrollMenuView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */