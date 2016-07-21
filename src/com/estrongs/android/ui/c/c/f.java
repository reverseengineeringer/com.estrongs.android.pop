package com.estrongs.android.ui.c.c;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;

public class f
  extends a
{
  private com.estrongs.android.ui.c.b.a b;
  private LinearLayout c;
  
  public f(Context paramContext)
  {
    super(paramContext, 2130903268);
  }
  
  protected void a(View paramView) {}
  
  public void a(com.estrongs.android.ui.c.b.a parama)
  {
    b = parama;
    c = ((LinearLayout)itemView.findViewById(2131624994));
    parama.a(c);
  }
  
  public void a(Object paramObject)
  {
    b.a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.c.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */