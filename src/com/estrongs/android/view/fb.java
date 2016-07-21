package com.estrongs.android.view;

import android.app.Activity;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.d.g;
import java.util.ArrayList;

class fb
  extends BaseExpandableListAdapter
{
  fb(eu parameu) {}
  
  public fj a(int paramInt)
  {
    return (fj)eu.a(a).get(paramInt);
  }
  
  public Object getChild(int paramInt1, int paramInt2)
  {
    return aa).get(paramInt1)).e;
  }
  
  public long getChildId(int paramInt1, int paramInt2)
  {
    return 0L;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject = aa).get(paramInt1)).e;
    paramView = new LinearLayout(a.ag);
    paramView.setOrientation(1);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0F);
    paramViewGroup = new LinearLayout.LayoutParams(-1, g.a(a.ag, 1.0F));
    if (localObject != null)
    {
      View localView = ((cr)localObject).aE();
      if (localView.getParent() != null) {
        ((ViewGroup)localView.getParent()).removeAllViews();
      }
      paramView.addView(localView, localLayoutParams);
      if (((cr)localObject).d() > 0) {
        localView.setVisibility(0);
      }
      for (;;)
      {
        localObject = new View(a.ag);
        ((View)localObject).setBackgroundColor(a.ag.getResources().getColor(2131558585));
        paramView.addView((View)localObject, paramViewGroup);
        return paramView;
        localView.setVisibility(8);
      }
    }
    return null;
  }
  
  public int getChildrenCount(int paramInt)
  {
    return 1;
  }
  
  public int getGroupCount()
  {
    return eu.a(a).size();
  }
  
  public long getGroupId(int paramInt)
  {
    return paramInt;
  }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = k.a(a.ag).inflate(2130903345, null);
    }
    paramView = a(paramInt);
    Object localObject = (TextView)paramViewGroup.findViewById(2131624537);
    TextView localTextView = (TextView)paramViewGroup.findViewById(2131625222);
    if (paramView != null)
    {
      ((TextView)localObject).setText(a);
      localTextView.setText(e.d() + "");
    }
    c = localTextView;
    localObject = (ImageView)paramViewGroup.findViewById(2131624544);
    d = ((ImageView)localObject);
    if (paramBoolean) {
      ((ImageView)localObject).setImageDrawable(eu.b(a));
    }
    while (e.d() == 0)
    {
      ((ImageView)localObject).setVisibility(4);
      localTextView.setVisibility(4);
      return paramViewGroup;
      ((ImageView)localObject).setImageDrawable(eu.c(a));
    }
    ((ImageView)localObject).setVisibility(0);
    localTextView.setVisibility(0);
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
 * Qualified Name:     com.estrongs.android.view.fb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */