package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface.OnDismissListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.guesture.ESGesturePanel;
import com.estrongs.android.ui.guesture.d;

public class fi
{
  private ci a;
  private Context b;
  private ESGesturePanel c;
  private String d;
  
  public fi(Context paramContext, String paramString)
  {
    b = paramContext;
    d = paramString;
    c();
  }
  
  private void c()
  {
    View localView = k.a(b).inflate(2130903190, null);
    TextView localTextView = (TextView)localView.findViewById(2131624537);
    if (d == null) {
      localTextView.setVisibility(8);
    }
    for (;;)
    {
      c = ((ESGesturePanel)localView.findViewById(2131624657));
      c.b = true;
      c.setOnGestureCompleteListener(new fj(this));
      a = new cv(b).a(localView).a(2131231534).b();
      return;
      localTextView.setText(b.getString(2131231533, new Object[] { d.a(b, d) }));
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
 * Qualified Name:     com.estrongs.android.ui.dialog.fi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */