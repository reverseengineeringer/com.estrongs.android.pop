package com.estrongs.fs.b;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.fs.util.j;

class bd
  implements Runnable
{
  bd(bc parambc) {}
  
  public void run()
  {
    if (ESActivity.H() == null) {
      return;
    }
    ci localci = new ci(ESActivity.H());
    View localView = k.a(ESActivity.H()).inflate(2130903195, null);
    localci.setContentView(localView);
    localci.setTitle(2131231483);
    TextView localTextView = (TextView)localView.findViewById(2131624200);
    if (aa).c == 1)
    {
      localTextView.setText(String.format(bc.b(a).getString(2131231481), new Object[] { bc.c(a), j.c(aa).e) }));
      ((TextView)localView.findViewById(2131624685)).setText("" + aa).g);
      ((TextView)localView.findViewById(2131624547)).setText(bc.d(a));
      if ((aa).c != 1) || (aa).b == 2)) {
        break label350;
      }
      localci.setLeftButton(bc.b(a).getString(2131231265), new be(this));
      localci.setMiddleButton(bc.b(a).getString(2131230868), new bf(this));
      localci.setRightButton(bc.b(a).getString(2131230869), new bg(this));
    }
    for (;;)
    {
      localci.show();
      return;
      localTextView.setText(String.format(bc.b(a).getString(2131231482), new Object[] { bc.c(a), Integer.valueOf(aa).c), j.c(aa).e) }));
      break;
      label350:
      localci.setConfirmButton(bc.b(a).getString(2131230869), new bh(this));
      localci.setCancelButton(bc.b(a).getString(2131231265), new bi(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */