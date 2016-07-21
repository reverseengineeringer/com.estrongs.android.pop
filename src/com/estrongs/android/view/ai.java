package com.estrongs.android.view;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.h.a.e;
import com.estrongs.android.h.f;
import com.estrongs.android.ui.theme.at;
import com.estrongs.fs.h;
import java.util.List;

class ai
  extends BaseAdapter
{
  ai(af paramaf) {}
  
  public h a(int paramInt)
  {
    return (h)a.d.get(paramInt);
  }
  
  public int getCount()
  {
    return a.d.size();
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
    paramView = (ImageView)paramViewGroup.findViewById(2131624199);
    h localh = (h)a.d.get(paramInt);
    Drawable localDrawable = f.c(localh);
    if (f.b(localh)) {
      e.a(localh.getAbsolutePath(), paramView, localh);
    }
    paramView.setImageDrawable(localDrawable);
    paramView = (TextView)paramViewGroup.findViewById(2131624200);
    if (af.a(a).p()) {
      paramView.setTextColor(af.a(a).l());
    }
    for (;;)
    {
      paramView.setText(((h)a.d.get(paramInt)).getName());
      paramViewGroup.setOnClickListener(new aj(this, paramInt));
      return paramViewGroup;
      paramView.setTextColor(af.a(a).c(2131558542));
    }
  }
  
  public void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    a.e();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */