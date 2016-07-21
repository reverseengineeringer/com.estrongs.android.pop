package com.estrongs.android.pop.app.b.c;

import android.content.Context;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;

public class d
  extends l
{
  protected TextView a;
  protected ProgressBar b;
  
  public d(Context paramContext)
  {
    super(paramContext, 2130903315);
  }
  
  protected void a(View paramView)
  {
    a = ((TextView)paramView.findViewById(2131625152));
    b = ((ProgressBar)paramView.findViewById(2131625151));
  }
  
  public void a(Object paramObject)
  {
    boolean bool = ((Boolean)paramObject).booleanValue();
    a.setVisibility(0);
    if (bool)
    {
      b.setVisibility(0);
      a.setText(2131232182);
      return;
    }
    b.setVisibility(8);
    a.setText(2131231848);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.c.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */