package com.estrongs.android.pop.app;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.view.utils.t;

class ei
  extends ArrayAdapter<t>
{
  private t[] b;
  
  public ei(OpenRecomm paramOpenRecomm, Context paramContext, int paramInt, t[] paramArrayOft)
  {
    super(paramContext, paramInt, paramArrayOft);
    b = paramArrayOft;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = g.a(a).inflate(2130903207, null);
    }
    paramView = b[paramInt];
    if (paramView != null)
    {
      ImageView localImageView = (ImageView)paramViewGroup.findViewById(2131362586);
      TextView localTextView = (TextView)paramViewGroup.findViewById(2131362587);
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
 * Qualified Name:     com.estrongs.android.pop.app.ei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */