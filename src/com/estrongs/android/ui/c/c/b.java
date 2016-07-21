package com.estrongs.android.ui.c.c;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.estrongs.android.ui.topclassify.ExpandableLayout;
import java.util.List;

public class b
  extends a
{
  LinearLayout b;
  ExpandableLayout c;
  ImageView d;
  
  public b(Context paramContext)
  {
    super(paramContext, 2130903263);
  }
  
  protected void a(View paramView)
  {
    b = ((LinearLayout)paramView.findViewById(2131624980));
    b.setFocusable(true);
    b.setBackgroundResource(2130837674);
    c = ((ExpandableLayout)paramView.findViewById(2131624979));
    d = ((ImageView)paramView.findViewById(2131624981));
    c.setSwitcher(d);
  }
  
  public void a(Object paramObject)
  {
    paramObject = (List)paramObject;
    c.getLayoutParams().width = -1;
    c.getLayoutParams().height = -2;
    c.setShowViews((List)paramObject);
    if (((List)paramObject).size() <= 2) {
      b.setVisibility(8);
    }
    for (;;)
    {
      b.setOnClickListener(new c(this));
      return;
      b.setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */