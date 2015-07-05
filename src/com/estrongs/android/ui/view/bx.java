package com.estrongs.android.ui.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.ui.theme.al;

public class bx
  extends ArrayAdapter<v>
{
  private v[] b;
  
  public bx(RecommendListView paramRecommendListView, Context paramContext, int paramInt, v[] paramArrayOfv)
  {
    super(paramContext, paramInt, paramArrayOfv);
    b = paramArrayOfv;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = g.a(RecommendListView.c(a)).inflate(2130903236, null);
    }
    paramView = b[paramInt];
    TextView localTextView1;
    Object localObject1;
    Object localObject2;
    TextView localTextView2;
    TextView localTextView3;
    if (paramView != null)
    {
      localTextView1 = (TextView)paramViewGroup.findViewById(2131362690);
      localObject1 = (TextView)paramViewGroup.findViewById(2131362684);
      ((TextView)localObject1).setTag(Integer.valueOf(paramInt));
      ((TextView)localObject1).setOnClickListener(RecommendListView.d(a));
      localObject1 = n.b().d(paramView);
      localObject2 = (ImageView)paramViewGroup.findViewById(2131362677);
      if (localObject1 != null) {
        break label275;
      }
      ((ImageView)localObject2).setImageResource(2130837647);
      localObject1 = (TextView)paramViewGroup.findViewById(2131362681);
      localObject2 = (TextView)paramViewGroup.findViewById(2131362682);
      localTextView2 = (TextView)paramViewGroup.findViewById(2131362679);
      localTextView3 = (TextView)paramViewGroup.findViewById(2131362693);
      RecommendListView.a(a, paramViewGroup, paramView);
      if (!RecommendListView.e(a)) {
        break label285;
      }
      ((LinearLayout)paramViewGroup.findViewById(2131362676)).setBackgroundResource(2130837568);
      ((TextView)localObject1).setTextColor(RecommendListView.f(a).d(2131230738));
      ((TextView)localObject2).setTextColor(RecommendListView.f(a).d(2131230738));
      localTextView2.setTextColor(RecommendListView.f(a).d(2131230738));
      localTextView3.setTextColor(RecommendListView.f(a).d(2131230738));
    }
    for (;;)
    {
      localTextView1.setVisibility(8);
      RecommendListView.b(a).put(paramInt, paramViewGroup);
      return paramViewGroup;
      label275:
      ((ImageView)localObject2).setImageBitmap((Bitmap)localObject1);
      break;
      label285:
      ((TextView)localObject1).setTextColor(RecommendListView.f(a).i());
      ((TextView)localObject2).setTextColor(RecommendListView.f(a).i());
      localTextView2.setTextColor(RecommendListView.f(a).i());
      localTextView3.setTextColor(RecommendListView.f(a).i());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */