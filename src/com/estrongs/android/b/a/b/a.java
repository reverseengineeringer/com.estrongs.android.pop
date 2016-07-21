package com.estrongs.android.b.a.b;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.b.a.o;
import com.estrongs.android.b.a.p;
import com.estrongs.android.pop.app.cleaner.i;

public class a
  implements o
{
  private void a(Context paramContext)
  {
    try
    {
      paramContext = com.estrongs.android.j.c.a(paramContext);
      paramContext.a("Clean_function_sdanalyze_click_pv");
      paramContext.c("clean", "Clean_function_sdanalyze_click_pv");
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public View a(ViewGroup paramViewGroup, Context paramContext)
  {
    return LayoutInflater.from(paramContext).inflate(2130903136, paramViewGroup, false);
  }
  
  public String a()
  {
    return "function";
  }
  
  public void a(View paramView, com.estrongs.android.b.a.a parama, Context paramContext, int paramInt, i parami)
  {
    ImageView localImageView = (ImageView)paramView.findViewById(2131624054);
    Object localObject4 = (ImageView)paramView.findViewById(2131624051);
    TextView localTextView1 = (TextView)paramView.findViewById(2131624055);
    TextView localTextView2 = (TextView)paramView.findViewById(2131624534);
    TextView localTextView3 = (TextView)paramView.findViewById(2131624140);
    Object localObject5;
    Object localObject2;
    Object localObject1;
    Object localObject3;
    if ((parama instanceof com.estrongs.android.b.a.a.c))
    {
      localObject5 = (com.estrongs.android.b.a.a.c)parama;
      localObject2 = ((com.estrongs.android.b.a.a.c)localObject5).o();
      localObject1 = ((com.estrongs.android.b.a.a.c)localObject5).u();
      parami = ((com.estrongs.android.b.a.a.c)localObject5).w();
      localObject3 = ((com.estrongs.android.b.a.a.c)localObject5).v();
      localImageView.setImageResource(((com.estrongs.android.b.a.a.c)parama).s());
      localImageView.setTag(null);
      if (localObject4 != null)
      {
        if (((com.estrongs.android.b.a.a.c)localObject5).t() != 0)
        {
          parama = paramContext.getResources().getDrawable(((com.estrongs.android.b.a.a.c)localObject5).t());
          ((ImageView)localObject4).getViewTreeObserver().addOnGlobalLayoutListener(new b(this, parama, (ImageView)localObject4));
          ((ImageView)localObject4).setImageResource(((com.estrongs.android.b.a.a.c)localObject5).t());
          ((ImageView)localObject4).setVisibility(0);
          ((ImageView)localObject4).setTag(null);
        }
      }
      else {
        parama = (com.estrongs.android.b.a.a)localObject3;
      }
    }
    for (;;)
    {
      localTextView1.setText((CharSequence)localObject2);
      localTextView2.setText((CharSequence)localObject1);
      localTextView3.setText(parami);
      paramView.setOnClickListener(new c(this, parama, paramContext));
      return;
      ((ImageView)localObject4).setVisibility(8);
      break;
      localObject5 = (p)parama;
      parama = ((p)localObject5).e("title");
      parami = ((p)localObject5).e("description");
      localObject1 = ((p)localObject5).e("button");
      localObject2 = ((p)localObject5).e("action");
      localObject3 = ((p)localObject5).e("icon");
      localObject5 = ((p)localObject5).e("image");
      com.estrongs.android.b.a.c.a(localImageView, (String)localObject3, 2130837752);
      if (localObject4 != null)
      {
        if (localObject5 != null)
        {
          ((ImageView)localObject4).setImageResource(2130837751);
          com.estrongs.android.b.a.c.a((ImageView)localObject4, (String)localObject5, 2130837751);
          ((ImageView)localObject4).setVisibility(0);
          localObject3 = parami;
          localObject4 = parama;
          parama = (com.estrongs.android.b.a.a)localObject2;
          parami = (i)localObject1;
          localObject1 = localObject3;
          localObject2 = localObject4;
        }
        else
        {
          ((ImageView)localObject4).setVisibility(8);
          ((ImageView)localObject4).setTag(null);
        }
      }
      else
      {
        localObject3 = parami;
        localObject4 = parama;
        parama = (com.estrongs.android.b.a.a)localObject2;
        parami = (i)localObject1;
        localObject1 = localObject3;
        localObject2 = localObject4;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */