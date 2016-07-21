package com.estrongs.android.pop.app;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Gallery.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.estrongs.android.pop.ah;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.v;

public class lc
  extends BaseAdapter
{
  private Context b;
  
  public lc(RecommItemDetailAcitivity paramRecommItemDetailAcitivity, Context paramContext)
  {
    b = paramContext;
    paramRecommItemDetailAcitivity.obtainStyledAttributes(ah.Gallery);
  }
  
  public int getCount()
  {
    return aa).l.length;
  }
  
  public Object getItem(int paramInt)
  {
    return Integer.valueOf(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = new ESImageView(b);
    paramViewGroup = n.b().e(RecommItemDetailAcitivity.a(a), paramInt);
    if (paramViewGroup == null) {
      paramView.setImageResource(2130838335);
    }
    for (;;)
    {
      paramView.setScaleType(ImageView.ScaleType.FIT_CENTER);
      paramView.setLayoutParams(new Gallery.LayoutParams(150, 274));
      return paramView;
      paramView.setImageBitmap(paramViewGroup);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.lc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */