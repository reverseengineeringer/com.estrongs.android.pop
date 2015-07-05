package com.estrongs.fs.b;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.fs.util.j;

class bb
  implements Runnable
{
  bb(ba paramba) {}
  
  public void run()
  {
    if (ESActivity.A() == null) {
      return;
    }
    cg localcg = new cg(ESActivity.A());
    View localView = g.a(ESActivity.A()).inflate(2130903107, null);
    localcg.setContentView(localView);
    localcg.setTitle(2131427555);
    TextView localTextView = (TextView)localView.findViewById(2131361822);
    if (aa).c == 1)
    {
      localTextView.setText(String.format(ba.b(a).getString(2131427556), new Object[] { ba.c(a), j.c(aa).e) }));
      ((TextView)localView.findViewById(2131362121)).setText("" + aa).g);
      ((TextView)localView.findViewById(2131362021)).setText(ba.d(a));
      if ((aa).c != 1) || (aa).b == 2)) {
        break label350;
      }
      localcg.setLeftButton(ba.b(a).getString(2131427340), new bc(this));
      localcg.setMiddleButton(ba.b(a).getString(2131427368), new bd(this));
      localcg.setRightButton(ba.b(a).getString(2131427385), new be(this));
    }
    for (;;)
    {
      localcg.show();
      return;
      localTextView.setText(String.format(ba.b(a).getString(2131427557), new Object[] { ba.c(a), Integer.valueOf(aa).c), j.c(aa).e) }));
      break;
      label350:
      localcg.setConfirmButton(ba.b(a).getString(2131427385), new bf(this));
      localcg.setCancelButton(ba.b(a).getString(2131427340), new bg(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */