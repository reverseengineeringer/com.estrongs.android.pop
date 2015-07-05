package com.estrongs.android.view;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.fs.h;
import java.util.List;

class y
  extends BaseAdapter
{
  y(x paramx) {}
  
  public h a(int paramInt)
  {
    return null;
  }
  
  public int getCount()
  {
    return 1;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = a.ag.inflate(2130903137, null);
    }
    paramViewGroup.setBackgroundResource(2130837560);
    ((ImageView)paramViewGroup.findViewById(2131362077)).setImageResource(2130837861);
    ((TextView)paramViewGroup.findViewById(2131361822)).setText(a.l(2131427890) + "(" + a.a.size() + ")");
    paramViewGroup.setOnClickListener(new z(this));
    return paramViewGroup;
  }
  
  public void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    a.e();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */