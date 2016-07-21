package com.estrongs.android.view;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.fs.h;
import java.util.List;

class aa
  extends BaseAdapter
{
  aa(z paramz) {}
  
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
      paramViewGroup = a.aj.inflate(2130903245, null);
    }
    paramViewGroup.setBackgroundResource(2130837674);
    ((ImageView)paramViewGroup.findViewById(2131624199)).setImageResource(2130838158);
    ((TextView)paramViewGroup.findViewById(2131624200)).setText(a.j(2131231785) + "(" + a.a.size() + ")");
    paramViewGroup.setOnClickListener(new ab(this));
    return paramViewGroup;
  }
  
  public void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    a.e();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */