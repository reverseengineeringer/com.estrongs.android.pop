package com.estrongs.android.pop.app.imageviewer;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.estrongs.android.b.a;
import com.estrongs.android.pop.app.imageviewer.gallery.e;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;

class ch
  extends FrameLayout
{
  ImageViewTouch a;
  View b;
  View c;
  private a e;
  
  public ch(ViewImage21 paramViewImage21, Context paramContext)
  {
    super(paramContext);
    paramViewImage21 = j.inflate(2130903166, this);
    a = ((ImageViewTouch)paramViewImage21.findViewById(2131362425));
    b = paramViewImage21.findViewById(2131362426);
    c = paramViewImage21.findViewById(2131362427);
  }
  
  private void a(View paramView, int paramInt)
  {
    if (paramView != null) {
      paramView.setVisibility(paramInt);
    }
  }
  
  public a a()
  {
    return e;
  }
  
  public void a(a parama)
  {
    e = parama;
  }
  
  public void a(e parame)
  {
    if (bd.a("load-progress::" + parame.d(), getTag())) {
      return;
    }
    a(a, 8);
    a(b, 0);
    a(c, 8);
    TextView localTextView = (TextView)b.findViewById(2131361822);
    if (localTextView != null) {
      localTextView.setText(am.bL(parame.d()));
    }
    setTag("load-progress::" + parame.d());
  }
  
  public void a(e parame, an paraman)
  {
    if (bd.a("load-sucess::" + parame.d(), getTag())) {}
    a(a, 0);
    a(b, 8);
    a(c, 8);
    a.a(paraman, false);
    setTag("load-sucess::" + parame.d());
  }
  
  public void b(e parame)
  {
    if (bd.a("load-error::" + parame.d(), getTag())) {
      return;
    }
    a(a, 8);
    a(b, 8);
    a(c, 0);
    setTag("load-error::" + parame.d());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */