package com.estrongs.android.ui.theme;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.e.jk;
import com.estrongs.android.widget.g;

public class ModifyThemeActivity
  extends ESActivity
{
  private al a;
  private int b;
  private jk c;
  private g d = null;
  
  private void a()
  {
    ((LinearLayout)findViewById(2131362758)).setOnClickListener(new a(this));
    ((TextView)findViewById(2131362760)).setText(2131428154);
    if (getResourcesgetConfigurationorientation == 1) {}
    c = new jk(this, true);
    c.a(2131428189, 2130838233, new b(this));
    ((LinearLayout)findViewById(2131362761)).addView(c.a(), new LinearLayout.LayoutParams(-1, -1));
  }
  
  private void b()
  {
    Drawable localDrawable = a.c(2130838147);
    localDrawable.setBounds(0, 0, getResources().getDimensionPixelSize(2131296262), getResources().getDimensionPixelSize(2131296262));
    TextView localTextView = (TextView)findViewById(2131362775);
    localTextView.setText(2131428150);
    localTextView.setCompoundDrawables(null, null, localDrawable, null);
    localTextView.setOnClickListener(new e(this));
    localTextView = (TextView)findViewById(2131362776);
    localTextView.setText(2131428155);
    localTextView.setCompoundDrawables(null, null, localDrawable, null);
    localTextView.setOnClickListener(new f(this));
    localTextView = (TextView)findViewById(2131362777);
    localTextView.setText(2131428151);
    localTextView.setCompoundDrawables(null, null, localDrawable, null);
    localTextView.setOnClickListener(new j(this));
    localTextView = (TextView)findViewById(2131362778);
    localTextView.setText(2131428153);
    localTextView.setCompoundDrawables(null, null, localDrawable, null);
    localTextView.setOnClickListener(new k(this));
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 268439577) && (paramInt2 == -1))
    {
      if (b == a.e()) {
        setResult(-1);
      }
      if ((d != null) && (d.h())) {
        d.k();
      }
    }
    do
    {
      return;
      if ((paramInt1 == 268439586) && (paramInt2 == -1))
      {
        setResult(-1);
        return;
      }
    } while ((paramInt1 != 268439587) || (paramInt2 != -1));
    setResult(-1);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      setContentView(2130903262);
      int i = getIntent().getIntExtra("theme_data_index", -1);
      if (i == -1)
      {
        finish();
        return;
      }
      b = i;
      a = al.a(this);
      a();
      b();
      return;
    }
    catch (NullPointerException paramBundle) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.ModifyThemeActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */