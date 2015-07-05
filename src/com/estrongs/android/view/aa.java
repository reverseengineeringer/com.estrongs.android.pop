package com.estrongs.android.view;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import com.estrongs.android.pop.esclasses.ESImageView;
import java.util.LinkedList;

class aa
  implements Runnable
{
  aa(u paramu) {}
  
  public void run()
  {
    u.b(a).removeAllViews();
    int i = 0;
    while (i < u.g().size())
    {
      if ((i > 0) && (i < u.g().size()))
      {
        localObject = new ESImageView(u.a(a));
        ((ImageView)localObject).setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        ((ImageView)localObject).setBackgroundResource(2130838229);
        u.b(a).addView((View)localObject);
      }
      Object localObject = ((ac)u.g().get(i)).aq();
      if (((View)localObject).getParent() != null) {
        ((ViewGroup)((View)localObject).getParent()).removeView((View)localObject);
      }
      u.b(a).addView((View)localObject);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */