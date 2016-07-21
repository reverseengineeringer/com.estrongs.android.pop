package com.estrongs.android.pop.app;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.h.f;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.fs.w;

public class cz
  extends ArrayAdapter<aj>
{
  private aj[] b;
  
  public cz(HideListActivity paramHideListActivity, Context paramContext, int paramInt, aj[] paramArrayOfaj)
  {
    super(paramContext, paramInt, paramArrayOfaj);
    b = paramArrayOfaj;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    String str = null;
    paramViewGroup = paramView;
    if (paramView == null)
    {
      paramViewGroup = k.a(getContext()).inflate(2130903262, null);
      paramViewGroup.setFocusable(false);
    }
    Button localButton1 = (Button)paramViewGroup.findViewById(2131624977);
    localButton1.setText(2131230882);
    localButton1.setOnClickListener(a.a);
    Button localButton2 = (Button)paramViewGroup.findViewById(2131624978);
    localButton2.setText(2131230868);
    localButton2.setOnClickListener(a.b);
    try
    {
      localaj = b[paramInt];
      if (localaj != null)
      {
        localImageView = (ImageView)paramViewGroup.findViewById(2131624973);
        localTextView1 = (TextView)paramViewGroup.findViewById(2131624975);
        localTextView2 = (TextView)paramViewGroup.findViewById(2131624976);
        if (b != null)
        {
          localButton1.setVisibility(0);
          localTextView2.setVisibility(0);
          localImageView.setVisibility(0);
        }
      }
    }
    catch (Exception paramView)
    {
      try
      {
        aj localaj;
        ImageView localImageView;
        TextView localTextView1;
        TextView localTextView2;
        if (a)
        {
          f.a(FileExplorerActivity.X());
          paramView = f.a(w.a.c());
          label185:
          if (paramView == null) {
            break label298;
          }
          localImageView.setImageDrawable(paramView);
          label195:
          str = ap.d(b);
          paramView = str;
          if (str == null) {
            paramView = "/";
          }
          localTextView1.setText(paramView);
          localTextView2.setVisibility(0);
          localTextView2.setText(ap.cc(c));
          localButton1.setTag(Integer.valueOf(paramInt));
          localButton2.setTag(Integer.valueOf(paramInt));
        }
        for (;;)
        {
          paramViewGroup.setBackgroundColor(0);
          return paramViewGroup;
          paramView = paramView;
          localaj = null;
          break;
          f.a(FileExplorerActivity.X());
          paramView = f.a(String.valueOf(bg.b(b)));
          break label185;
          label298:
          if (a)
          {
            localImageView.setImageResource(2130837904);
            break label195;
          }
          localImageView.setImageResource(2130837924);
          break label195;
          localButton1.setVisibility(8);
          localButton2.setVisibility(8);
          localImageView.setVisibility(8);
          localTextView2.setVisibility(8);
          localTextView1.setText(2131231559);
          localTextView1.setGravity(17);
          paramView = localTextView1.getLayoutParams();
          double d = getLayoutParamsheight / 36.0D;
          height = ((int)(43.0D * d));
          localTextView1.setLayoutParams(paramView);
          localTextView1.setPadding(0, 0, 0, (int)(5.0D * d));
          localButton1.setTag(Integer.valueOf(-1));
          localButton2.setTag(Integer.valueOf(-1));
          continue;
          localButton1.setTag(Integer.valueOf(-1));
          localButton2.setTag(Integer.valueOf(-1));
        }
      }
      catch (Exception paramView)
      {
        for (;;)
        {
          paramView = str;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */