package com.estrongs.android.b.a.b;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.ImageView;
import com.estrongs.android.b.a.a;
import com.estrongs.android.b.a.o;
import com.estrongs.android.pop.app.cleaner.i;

public class d
  implements o
{
  public View a(ViewGroup paramViewGroup, Context paramContext)
  {
    return LayoutInflater.from(paramContext).inflate(2130903138, paramViewGroup, false);
  }
  
  public String a()
  {
    return "rate";
  }
  
  public void a(View paramView, a parama, Context paramContext, int paramInt, i parami)
  {
    parama = (Button)paramView.findViewById(2131624140);
    parami = new f(this, paramContext);
    paramView.setOnClickListener(parami);
    parama.setOnClickListener(parami);
    paramView = (ImageView)paramView.findViewById(2131624051);
    parama = paramContext.getResources().getDrawable(2130838053);
    paramView.getViewTreeObserver().addOnGlobalLayoutListener(new e(this, parama, paramView));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */