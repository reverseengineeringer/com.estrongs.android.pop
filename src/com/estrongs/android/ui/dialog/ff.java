package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface.OnDismissListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.guesture.ESGesturePanel;
import com.estrongs.android.ui.guesture.d;

public class ff
{
  private cg a;
  private Context b;
  private ESGesturePanel c;
  private String d;
  
  public ff(Context paramContext, String paramString)
  {
    b = paramContext;
    d = paramString;
    c();
  }
  
  private void c()
  {
    View localView = g.a(b).inflate(2130903102, null);
    TextView localTextView = (TextView)localView.findViewById(2131361997);
    if (d == null) {
      localTextView.setVisibility(8);
    }
    for (;;)
    {
      c = ((ESGesturePanel)localView.findViewById(2131362093));
      c.c = true;
      c.a(new fg(this));
      a = new ct(b).a(localView).a(2131428350).b();
      return;
      localTextView.setText(b.getString(2131428352, new Object[] { d.a(b, d) }));
    }
  }
  
  public void a()
  {
    a.show();
  }
  
  public void a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    a.setOnDismissListener(paramOnDismissListener);
  }
  
  public void b()
  {
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */