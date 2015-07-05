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
import com.estrongs.android.d.f;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.utils.af;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.fs.m;

public class cx
  extends ArrayAdapter<af>
{
  private af[] b;
  
  public cx(HideListActivity paramHideListActivity, Context paramContext, int paramInt, af[] paramArrayOfaf)
  {
    super(paramContext, paramInt, paramArrayOfaf);
    b = paramArrayOfaf;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    String str = null;
    paramViewGroup = paramView;
    if (paramView == null)
    {
      paramViewGroup = g.a(getContext()).inflate(2130903155, null);
      paramViewGroup.setFocusable(false);
    }
    Button localButton1 = (Button)paramViewGroup.findViewById(2131362370);
    localButton1.setText(2131427380);
    localButton1.setOnClickListener(a.a);
    Button localButton2 = (Button)paramViewGroup.findViewById(2131362371);
    localButton2.setText(2131427368);
    localButton2.setOnClickListener(a.b);
    try
    {
      localaf = b[paramInt];
      if (localaf != null)
      {
        localImageView = (ImageView)paramViewGroup.findViewById(2131362366);
        localTextView1 = (TextView)paramViewGroup.findViewById(2131362368);
        localTextView2 = (TextView)paramViewGroup.findViewById(2131362369);
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
        af localaf;
        ImageView localImageView;
        TextView localTextView1;
        TextView localTextView2;
        if (a)
        {
          f.a(FileExplorerActivity.J());
          paramView = f.a(m.a.c());
          label185:
          if (paramView == null) {
            break label298;
          }
          localImageView.setImageDrawable(paramView);
          label195:
          str = am.d(b);
          paramView = str;
          if (str == null) {
            paramView = "/";
          }
          localTextView1.setText(paramView);
          localTextView2.setVisibility(0);
          localTextView2.setText(am.bL(c));
          localButton1.setTag(Integer.valueOf(paramInt));
          localButton2.setTag(Integer.valueOf(paramInt));
        }
        for (;;)
        {
          paramViewGroup.setBackgroundColor(0);
          return paramViewGroup;
          paramView = paramView;
          localaf = null;
          break;
          f.a(FileExplorerActivity.J());
          paramView = f.a(String.valueOf(bc.b(b)));
          break label185;
          label298:
          if (a)
          {
            localImageView.setImageResource(2130837653);
            break label195;
          }
          localImageView.setImageResource(2130837664);
          break label195;
          localButton1.setVisibility(8);
          localButton2.setVisibility(8);
          localImageView.setVisibility(8);
          localTextView2.setVisibility(8);
          localTextView1.setText(2131428157);
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
 * Qualified Name:     com.estrongs.android.pop.app.cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */