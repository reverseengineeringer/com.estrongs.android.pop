package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.preference.q;
import com.estrongs.android.ui.theme.at;
import java.util.List;

public class km
  extends a
{
  private q h = new kn(this);
  private int i = -1;
  private int j = 0;
  
  public km(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, paramBoolean);
    FexApplication.a().a(h);
    b(f.c(2131558718));
    j = f.c(2131558722);
  }
  
  public com.estrongs.android.view.a.a a(int paramInt1, int paramInt2, MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    return a(b.getResources().getString(paramInt1), paramInt2, paramOnMenuItemClickListener);
  }
  
  public com.estrongs.android.view.a.a a(String paramString, int paramInt, MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    Drawable localDrawable = null;
    if (paramInt != -1) {
      localDrawable = f.a(paramInt);
    }
    paramString = new com.estrongs.android.view.a.a(localDrawable, paramString);
    paramString.a(paramOnMenuItemClickListener);
    a(paramString);
    return paramString;
  }
  
  protected void a(Button paramButton, com.estrongs.android.view.a.a parama, int paramInt)
  {
    try
    {
      parama.a((View)paramButton.getParent());
      Object localObject2 = parama.getIcon();
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = f.a(parama.b());
        parama.a((Drawable)localObject1);
      }
      if (g != 0) {
        localObject1 = g.a((Drawable)localObject1, g);
      }
      for (;;)
      {
        if (localObject1 != null)
        {
          paramInt = b.getResources().getDimensionPixelSize(2131165273);
          ((Drawable)localObject1).setBounds(0, 0, paramInt, paramInt);
        }
        if (ad.a(b).at())
        {
          CharSequence localCharSequence = parama.getTitle();
          localObject2 = localCharSequence;
          if (localCharSequence == null)
          {
            localObject2 = b.getString(parama.a());
            parama.a((CharSequence)localObject2);
          }
          paramButton.setCompoundDrawables(null, (Drawable)localObject1, null, null);
          paramButton.setText((CharSequence)localObject2);
        }
        for (;;)
        {
          paramButton.setClickable(false);
          parama.c(j);
          paramButton.setTextColor(j);
          if (parama.d() != null) {
            break;
          }
          parama.a(new kq(this));
          return;
          paramButton.setCompoundDrawables((Drawable)localObject1, null, null, null);
          paramButton.setText("");
          paramButton.setPadding(0, 0, 0, 0);
        }
      }
    }
    catch (Exception paramButton)
    {
      paramButton.printStackTrace();
      return;
    }
  }
  
  public void a(com.estrongs.android.view.a.a parama)
  {
    LinearLayout localLinearLayout = (LinearLayout)k.a(b).inflate(2130903324, null);
    Button localButton = (Button)localLinearLayout.findViewById(2131625174);
    a(localButton, parama, a.size());
    a.add(parama);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, -1);
    localButton.setSingleLine();
    weight = 1.0F;
    gravity = 17;
    ((LinearLayout)c).addView(localLinearLayout, localLayoutParams);
    localLinearLayout.setOnClickListener(new ko(this, localButton, parama));
    localLinearLayout.setOnLongClickListener(new kp(this, parama));
    localLinearLayout.setFocusable(true);
  }
  
  public void c(int paramInt)
  {
    j = paramInt;
    i();
  }
  
  public void g()
  {
    super.g();
    FexApplication.a().b(h);
  }
  
  public void i()
  {
    int m = a.size();
    int k = 0;
    while (k < m)
    {
      com.estrongs.android.view.a.a locala = (com.estrongs.android.view.a.a)a.get(k);
      a((Button)locala.g().findViewById(2131625174), locala, k);
      k += 1;
    }
  }
  
  public void j()
  {
    a.clear();
    ((LinearLayout)c).removeAllViews();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.km
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */