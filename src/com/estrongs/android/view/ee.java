package com.estrongs.android.view;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.estrongs.fs.h;
import com.estrongs.fs.w;

public class ee<T>
  extends cg<h>.ck<T>
{
  protected ee(eb parameb)
  {
    super(parameb);
  }
  
  public ci a(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramInt == 1)
    {
      paramViewGroup = a.aj.inflate(a.x(), null, false);
      paramViewGroup = (eq)c.b(paramViewGroup);
      a = paramInt;
    }
    for (;;)
    {
      if (paramInt == 3)
      {
        View localView = a.aj.inflate(2130903272, null, false);
        paramViewGroup = (eq)c.b(localView);
        a = paramInt;
        b = true;
        localView.setTag(paramViewGroup);
      }
      return paramViewGroup;
      if (paramInt == 2)
      {
        paramViewGroup = a.aj.inflate(a.y(), null, false);
        paramViewGroup = (eq)c.b(paramViewGroup);
        a = paramInt;
      }
      else
      {
        paramViewGroup = null;
      }
    }
  }
  
  public void a(ci paramci, int paramInt)
  {
    super.a(paramci, paramInt);
    itemView.setOnClickListener(new ef(this, paramInt, paramci));
  }
  
  public int getItemCount()
  {
    return a.d();
  }
  
  public int getItemViewType(int paramInt)
  {
    h localh = (h)a.e(paramInt);
    if ((localh != null) && (localh.getFileType().a())) {
      return 1;
    }
    if ((localh != null) && (localh.getFileType().equals(w.K))) {
      return 3;
    }
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */