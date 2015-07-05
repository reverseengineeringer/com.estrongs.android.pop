package com.estrongs.android.pop.app.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.dialog.cg;

class ac
  extends cg
{
  public ac(e parame, Context paramContext)
  {
    super(paramContext);
    setTitle(getString(2131427439));
    View localView = g.a(paramContext).inflate(2130903249, null);
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131361954);
    boolean bool = com.estrongs.android.pop.ad.a(paramContext).ay();
    localCheckBox.setChecked(bool);
    ((TextView)localView.findViewById(2131361979)).setText(paramContext.getString(2131428334));
    setContentView(localView);
    localView.setOnClickListener(new ad(this, parame, localCheckBox));
    setConfirmButton(getString(2131427339), new ae(this, parame, localCheckBox, bool, paramContext));
    setCancelButton(getString(2131427340), new af(this, parame));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */