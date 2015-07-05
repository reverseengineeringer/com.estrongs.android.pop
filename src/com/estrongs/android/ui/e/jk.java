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
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.preference.q;
import com.estrongs.android.ui.theme.al;
import java.util.List;

public class jk
  extends a
{
  private q g = new jl(this);
  private int h = -1;
  
  public jk(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, paramBoolean);
    FexApplication.a().a(g);
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
  
  public void a(int paramInt1, int paramInt2, int paramInt3)
  {
    a(paramInt1, b.getResources().getString(paramInt2), paramInt3);
  }
  
  public void a(int paramInt1, String paramString, int paramInt2)
  {
    a(a(paramInt1), paramString, paramInt2);
  }
  
  protected void a(Button paramButton, com.estrongs.android.view.a.a parama, int paramInt)
  {
    try
    {
      parama.a((View)paramButton.getParent());
      Drawable localDrawable = parama.getIcon();
      if (localDrawable != null)
      {
        paramInt = b.getResources().getDimensionPixelSize(2131296262);
        localDrawable.setBounds(0, 0, paramInt, paramInt);
      }
      if (ad.a(b).as())
      {
        paramButton.setCompoundDrawables(null, localDrawable, null, null);
        paramButton.setText(parama.getTitle());
        paramButton.setPadding(0, com.estrongs.android.ui.d.a.a(b, 7.0F), 0, 0);
      }
      for (;;)
      {
        paramButton.setClickable(false);
        parama.c(f.d(2131230736));
        paramButton.setTextColor(f.d(2131230736));
        if (parama.d() == null) {
          parama.a(new jo(this));
        }
        if (h == -1) {
          break;
        }
        paramButton.setTextSize(0, h);
        return;
        paramButton.setCompoundDrawables(parama.getIcon(), null, null, null);
        paramButton.setText("");
        paramButton.setPadding(0, 0, 0, 0);
      }
      return;
    }
    catch (Exception paramButton)
    {
      paramButton.printStackTrace();
    }
  }
  
  public void a(com.estrongs.android.view.a.a parama)
  {
    LinearLayout localLinearLayout = (LinearLayout)g.a(b).inflate(2130903188, null);
    Button localButton = (Button)localLinearLayout.findViewById(2131362472);
    a(localButton, parama, a.size());
    a.add(parama);
    LinearLayout.LayoutParams localLayoutParams;
    if (d)
    {
      localLayoutParams = new LinearLayout.LayoutParams(0, -1);
      localButton.setSingleLine();
    }
    for (;;)
    {
      weight = 1.0F;
      ((LinearLayout)c).addView(localLinearLayout, localLayoutParams);
      localLinearLayout.setOnClickListener(new jm(this, localButton, parama));
      localLinearLayout.setOnLongClickListener(new jn(this, parama));
      localLinearLayout.setFocusable(true);
      return;
      localLayoutParams = new LinearLayout.LayoutParams(-1, 0);
      localButton.setMaxLines(2);
      localButton.setLines(2);
    }
  }
  
  protected void a(com.estrongs.android.view.a.a parama, String paramString, int paramInt)
  {
    Drawable localDrawable = f.c(paramInt);
    if (localDrawable != null)
    {
      paramInt = b.getResources().getDimensionPixelSize(2131296262);
      localDrawable.setBounds(0, 0, paramInt, paramInt);
    }
    parama.a(localDrawable);
    parama.a(paramString);
  }
  
  public void b(int paramInt)
  {
    h = paramInt;
    i();
  }
  
  public void g()
  {
    super.g();
    FexApplication.a().b(g);
  }
  
  public void i()
  {
    int j = a.size();
    int i = 0;
    while (i < j)
    {
      com.estrongs.android.view.a.a locala = (com.estrongs.android.view.a.a)a.get(i);
      a((Button)locala.g().findViewById(2131362472), locala, i);
      i += 1;
    }
  }
  
  public void j()
  {
    a.clear();
    ((LinearLayout)c).removeAllViews();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.jk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */