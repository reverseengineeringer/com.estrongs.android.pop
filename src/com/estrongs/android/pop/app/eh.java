package com.estrongs.android.pop.app;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.utils.t;

class eh
  extends ArrayAdapter<t>
{
  private t[] b;
  
  public eh(OpenRecomm paramOpenRecomm, Context paramContext, int paramInt, t[] paramArrayOft)
  {
    super(paramContext, paramInt, paramArrayOft);
    b = paramArrayOft;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = k.a(a).inflate(2130903368, null);
    }
    paramView = b[paramInt];
    if (paramView != null)
    {
      ImageView localImageView = (ImageView)paramViewGroup.findViewById(2131625337);
      TextView localTextView = (TextView)paramViewGroup.findViewById(2131625338);
      if (localImageView != null) {
        localImageView.setImageDrawable(a);
      }
      if (localTextView != null) {
        localTextView.setText(b);
      }
    }
    paramViewGroup.setTag(paramView);
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.eh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */