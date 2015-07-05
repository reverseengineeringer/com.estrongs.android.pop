package com.estrongs.android.view;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.estrongs.android.ui.drag.DragGrid;
import com.estrongs.android.widget.c;
import com.estrongs.fs.h;
import com.estrongs.fs.m;

public class cm<T>
  extends c<T>
{
  int a = 0;
  
  protected cm(cd paramcd) {}
  
  public int getCount()
  {
    return b.d();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = (h)b.e(paramInt);
    if (paramViewGroup == null)
    {
      if (paramView != null) {
        return paramView;
      }
      return d.a(paramViewGroup);
    }
    if ((paramViewGroup != null) && (paramViewGroup.getFileType().a()))
    {
      a = 1;
      if ((paramViewGroup != null) && (paramViewGroup.getFileType().equals(m.L))) {
        a = 3;
      }
      if ((paramView != null) && (getTaga == a) && (!getTagb)) {
        break label262;
      }
      paramView = d.a(paramViewGroup);
      paramViewGroup = (cp)d.b(paramView);
      a = a;
      paramView.setTag(paramViewGroup);
      label150:
      h = getItem(paramInt);
      if (a != 3) {
        break label273;
      }
      paramView.setVisibility(0);
      paramView = b.ag.inflate(2130903161, null, false);
      paramViewGroup = (cp)d.b(paramView);
      a = a;
      b = true;
      paramView.setTag(paramViewGroup);
    }
    label262:
    label273:
    for (;;)
    {
      if (e != null)
      {
        DragGrid localDragGrid = (DragGrid)paramView;
        e.a(localDragGrid);
      }
      d.a(paramViewGroup, paramInt);
      return paramView;
      a = 2;
      break;
      paramViewGroup = (cp)paramView.getTag();
      break label150;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.cm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */