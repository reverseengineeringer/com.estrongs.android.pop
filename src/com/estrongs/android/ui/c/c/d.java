package com.estrongs.android.ui.c.c;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.app.messagebox.ah;
import com.estrongs.android.ui.theme.at;

public class d
  extends a
{
  TextView b;
  TextView c;
  
  public d(Context paramContext)
  {
    super(paramContext, 2130903265);
  }
  
  protected void a(View paramView)
  {
    b = ((TextView)paramView.findViewById(2131624987));
    c = ((TextView)paramView.findViewById(2131624988));
    ((ImageView)paramView.findViewById(2131624986)).setImageDrawable(at.a(a).b(2130838005, 2131558485));
    paramView.setOnClickListener(new e(this));
    com.estrongs.android.j.d.c(a);
  }
  
  public void a(Object paramObject)
  {
    paramObject = (ah)paramObject;
    b.setText(n);
    c.setText(o);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.c.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */