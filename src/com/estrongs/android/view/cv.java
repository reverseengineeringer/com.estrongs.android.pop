package com.estrongs.android.view;

import android.app.Activity;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.widget.HeaderGridView;
import java.util.ArrayList;

class cv
  extends BaseExpandableListAdapter
{
  cv(cq paramcq) {}
  
  public dd a(int paramInt)
  {
    return (dd)cq.a(a).get(paramInt);
  }
  
  public Object getChild(int paramInt1, int paramInt2)
  {
    return aa).get(paramInt1)).d;
  }
  
  public long getChildId(int paramInt1, int paramInt2)
  {
    return 0L;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    paramView = aa).get(paramInt1)).d;
    if (paramView != null)
    {
      paramView = paramView.aq();
      ((HeaderGridView)paramView.findViewById(2131362046)).a(true);
      return paramView;
    }
    return null;
  }
  
  public int getChildrenCount(int paramInt)
  {
    return 1;
  }
  
  public int getGroupCount()
  {
    return cq.a(a).size();
  }
  
  public long getGroupId(int paramInt)
  {
    return paramInt;
  }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = g.a(a.ad).inflate(2130903194, null);
    }
    paramView = a(paramInt);
    TextView localTextView = (TextView)paramViewGroup.findViewById(2131361997);
    localTextView.setTextColor(a.ad.getResources().getColor(2131230780));
    if (paramView != null) {
      localTextView.setText(a + " (" + d.d() + ")");
    }
    c = localTextView;
    paramView = (ImageView)paramViewGroup.findViewById(2131362017);
    if (paramBoolean)
    {
      paramView.setImageDrawable(cq.b(a));
      return paramViewGroup;
    }
    paramView.setImageDrawable(cq.c(a));
    return paramViewGroup;
  }
  
  public boolean hasStableIds()
  {
    return false;
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */