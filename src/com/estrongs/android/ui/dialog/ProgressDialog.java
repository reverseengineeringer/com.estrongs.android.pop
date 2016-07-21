package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;

public class ProgressDialog
  extends ci
{
  private ProgressBar a;
  private TextView b;
  private boolean c = true;
  private View d;
  private ProgressDialog.ProgressStyle e;
  
  public ProgressDialog(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public static ProgressDialog a(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean1, boolean paramBoolean2)
  {
    return a(paramContext, paramCharSequence1, paramCharSequence2, paramBoolean1, paramBoolean2, null);
  }
  
  public static ProgressDialog a(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean1, boolean paramBoolean2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    paramContext = new ProgressDialog(paramContext);
    paramContext.setTitle(paramCharSequence1);
    paramContext.setMessage(paramCharSequence2);
    paramContext.a(paramBoolean1);
    paramContext.setCancelable(paramBoolean2);
    paramContext.setOnCancelListener(paramOnCancelListener);
    paramContext.show();
    return paramContext;
  }
  
  private void a()
  {
    d = k.a(mContext).inflate(2130903193, null);
    e = ProgressDialog.ProgressStyle.horizontal;
    b();
    setContentView(d);
  }
  
  private void b()
  {
    View localView;
    if (e == ProgressDialog.ProgressStyle.roll)
    {
      localView = d.findViewById(2131624678);
      d.findViewById(2131624677).setVisibility(4);
    }
    for (;;)
    {
      localView.setVisibility(0);
      b = ((TextView)localView.findViewById(2131624200));
      a = ((ProgressBar)localView.findViewById(2131624429));
      if (e == ProgressDialog.ProgressStyle.horizontal) {
        a.setIndeterminate(c);
      }
      return;
      localView = d.findViewById(2131624677);
      d.findViewById(2131624678).setVisibility(4);
    }
  }
  
  public void a(ProgressDialog.ProgressStyle paramProgressStyle)
  {
    e = paramProgressStyle;
    if (e == ProgressDialog.ProgressStyle.roll) {
      c = true;
    }
    b();
  }
  
  public void a(boolean paramBoolean)
  {
    c = paramBoolean;
    b();
  }
  
  public void setMessage(CharSequence paramCharSequence)
  {
    b.setText(paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ProgressDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */