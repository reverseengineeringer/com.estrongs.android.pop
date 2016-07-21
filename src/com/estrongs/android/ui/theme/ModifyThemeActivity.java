package com.estrongs.android.ui.theme;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.widget.f;
import java.util.List;

public class ModifyThemeActivity
  extends HomeAsBackActivity
{
  private at a;
  private int b;
  private f c = null;
  
  private void d()
  {
    TextView localTextView1 = (TextView)findViewById(2131625563);
    localTextView1.setText(2131232412);
    localTextView1.setOnClickListener(new d(this));
    localTextView1 = (TextView)findViewById(2131625564);
    localTextView1.setText(2131232413);
    localTextView1.setOnClickListener(new e(this));
    localTextView1 = (TextView)findViewById(2131625565);
    localTextView1.setText(2131232431);
    localTextView1.setOnClickListener(new i(this));
    ((TextView)findViewById(2131625566)).setOnClickListener(new j(this));
    localTextView1 = (TextView)findViewById(2131625567);
    localTextView1.setOnClickListener(new k(this));
    TextView localTextView2 = (TextView)findViewById(2131625568);
    localTextView2.setOnClickListener(new l(this));
    TextView localTextView3 = (TextView)findViewById(2131625569);
    localTextView3.setOnClickListener(new m(this));
    List localList = a.g();
    if ((localList != null) && (!((al)localList.get(b)).c()))
    {
      ((View)localTextView1.getParent()).setVisibility(8);
      ((View)localTextView2.getParent()).setVisibility(8);
      ((View)localTextView3.getParent()).setVisibility(8);
    }
  }
  
  protected void a(List<com.estrongs.android.view.a.a> paramList)
  {
    paramList.add(new com.estrongs.android.view.a.a(2130838603, 2131232427).a(new a(this)));
  }
  
  protected boolean c()
  {
    return false;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 4121) && (paramInt2 == -1))
    {
      if (b == a.e()) {
        setResult(-1);
      }
      if ((c != null) && (c.h())) {
        c.k();
      }
    }
    do
    {
      return;
      if ((paramInt1 == 4130) && (paramInt2 == -1))
      {
        setResult(-1);
        return;
      }
      if ((paramInt1 == 4131) && (paramInt2 == -1))
      {
        setResult(-1);
        return;
      }
    } while ((paramInt1 != 4133) || (paramInt2 != -1));
    setResult(-1);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131232422);
    try
    {
      setContentView(2130903443);
      int i = getIntent().getIntExtra("theme_data_index", -1);
      if (i == -1)
      {
        finish();
        return;
      }
      b = i;
      a = J();
      d();
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