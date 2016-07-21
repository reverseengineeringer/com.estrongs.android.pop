package com.flurry.sdk;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import java.util.List;

class ey$6
  extends ArrayAdapter<String>
{
  ey$6(ey paramey, Context paramContext1, int paramInt, List paramList, Context paramContext2)
  {
    super(paramContext1, paramInt, paramList);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null)
    {
      paramViewGroup = new LinearLayout(a);
      paramViewGroup.setOrientation(0);
      paramViewGroup.setBackgroundColor(-1);
      paramViewGroup.setPadding(ey.a(), ey.a(), ey.a(), ey.a());
      paramViewGroup.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
      paramView = new ImageView(a);
      paramView.setId(101);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(lr.b(30), lr.b(30));
      localLayoutParams.setMargins(ey.b(), 0, ey.c(), 0);
      paramViewGroup.addView(paramView, localLayoutParams);
      paramView = new TextView(a);
      paramView.setId(102);
      paramView.setTextColor(-16777216);
      paramView.setTextSize(2, 16.0F);
      paramView.setGravity(17);
      paramViewGroup.addView(paramView, new LinearLayout.LayoutParams(-2, -1));
    }
    paramView = (ImageView)paramViewGroup.findViewById(101);
    ei.a().a((String)ey.h(b).get(paramInt), paramView);
    ((TextView)paramViewGroup.findViewById(102)).setText((CharSequence)ey.h(b).get(paramInt));
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ey.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */