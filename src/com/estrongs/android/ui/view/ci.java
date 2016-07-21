package com.estrongs.android.ui.view;

import android.graphics.Bitmap;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.ui.theme.at;

public class ci
  extends BaseAdapter
{
  private v[] b;
  
  public ci(RecommendListView paramRecommendListView, v[] paramArrayOfv)
  {
    b = paramArrayOfv;
  }
  
  public void a(v[] paramArrayOfv)
  {
    b = paramArrayOfv;
  }
  
  public int getCount()
  {
    return b.length;
  }
  
  public Object getItem(int paramInt)
  {
    return b[paramInt];
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = k.a(RecommendListView.d(a)).inflate(2130903402, null);
    }
    paramViewGroup.setTag(Integer.valueOf(paramInt));
    paramView = b[paramInt];
    Object localObject1;
    Object localObject2;
    TextView localTextView2;
    TextView localTextView3;
    if (paramView != null)
    {
      TextView localTextView1 = (TextView)paramViewGroup.findViewById(2131625458);
      localObject1 = (TextView)paramViewGroup.findViewById(2131625452);
      ((TextView)localObject1).setTag(Integer.valueOf(paramInt));
      ((TextView)localObject1).setOnClickListener(RecommendListView.e(a));
      localObject1 = n.b().e(paramView);
      localObject2 = (ImageView)paramViewGroup.findViewById(2131625445);
      if (localObject1 != null) {
        break label321;
      }
      ((ImageView)localObject2).setImageResource(2130837895);
      localObject1 = (TextView)paramViewGroup.findViewById(2131625449);
      localObject2 = (TextView)paramViewGroup.findViewById(2131625450);
      localTextView2 = (TextView)paramViewGroup.findViewById(2131625447);
      localTextView3 = (TextView)paramViewGroup.findViewById(2131625461);
      RecommendListView.a(a, paramViewGroup, paramView);
      if (!RecommendListView.f(a)) {
        break label331;
      }
      ((LinearLayout)paramViewGroup.findViewById(2131625444)).setBackgroundResource(2130837692);
      ((TextView)localObject1).setTextColor(RecommendListView.g(a).c(2131558661));
      ((TextView)localObject2).setTextColor(RecommendListView.g(a).c(2131558661));
      localTextView2.setTextColor(RecommendListView.g(a).c(2131558661));
      localTextView3.setTextColor(RecommendListView.g(a).c(2131558661));
      label262:
      localTextView1.setVisibility(8);
      if (aa)[paramInt].q != 6) {
        break label394;
      }
      paramViewGroup.findViewById(2131625452).setVisibility(8);
      paramViewGroup.findViewById(2131624391).setVisibility(0);
    }
    for (;;)
    {
      RecommendListView.b(a).put(paramInt, paramViewGroup);
      return paramViewGroup;
      label321:
      ((ImageView)localObject2).setImageBitmap((Bitmap)localObject1);
      break;
      label331:
      ((TextView)localObject1).setTextColor(RecommendListView.g(a).i());
      ((TextView)localObject2).setTextColor(RecommendListView.g(a).i());
      localTextView2.setTextColor(RecommendListView.g(a).i());
      localTextView3.setTextColor(RecommendListView.g(a).i());
      break label262;
      label394:
      paramViewGroup.findViewById(2131625452).setVisibility(0);
      paramViewGroup.findViewById(2131624391).setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */