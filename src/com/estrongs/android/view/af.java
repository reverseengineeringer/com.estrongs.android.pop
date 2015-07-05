package com.estrongs.android.view;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.d.f;
import com.estrongs.android.d.k;
import com.estrongs.android.ui.theme.al;
import com.estrongs.fs.h;
import java.util.List;

class af
  extends BaseAdapter
{
  af(ac paramac) {}
  
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
      paramViewGroup = a.ag.inflate(2130903137, null);
    }
    paramViewGroup.setBackgroundResource(2130837560);
    ImageView localImageView = (ImageView)paramViewGroup.findViewById(2131362077);
    h localh = (h)a.d.get(paramInt);
    paramView = f.d(localh);
    if (f.c(localh)) {
      if (f.a(localh)) {
        paramView = f.e(localh);
      }
    }
    for (;;)
    {
      localImageView.setImageDrawable(paramView);
      paramView = (TextView)paramViewGroup.findViewById(2131361822);
      paramView.setTextColor(al.a(a.ad).d(2131230726));
      paramView.setText(((h)a.d.get(paramInt)).getName());
      paramViewGroup.setOnClickListener(new ag(this, paramInt));
      return paramViewGroup;
      if (a.f == null) {
        ac.a(a);
      }
      a.f.a(paramInt, localh, localImageView);
    }
  }
  
  public void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    a.e();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */