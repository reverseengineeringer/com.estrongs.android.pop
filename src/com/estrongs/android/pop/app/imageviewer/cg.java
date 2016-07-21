package com.estrongs.android.pop.app.imageviewer;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.estrongs.android.f.a;
import com.estrongs.android.pop.app.imageviewer.gallery.e;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;

class cg
  extends FrameLayout
{
  ImageViewTouch a;
  View b;
  View c;
  private a e;
  
  public cg(ViewImage21 paramViewImage21, Context paramContext)
  {
    super(paramContext);
    paramViewImage21 = j.inflate(2130903277, this);
    a = ((ImageViewTouch)paramViewImage21.findViewById(2131625037));
    b = paramViewImage21.findViewById(2131625038);
    c = paramViewImage21.findViewById(2131625039);
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
    if (bk.a("load-progress::" + parame.d(), getTag())) {
      return;
    }
    a(a, 8);
    a(b, 0);
    a(c, 8);
    TextView localTextView = (TextView)b.findViewById(2131624200);
    if (localTextView != null) {
      localTextView.setText(ap.cc(parame.d()));
    }
    setTag("load-progress::" + parame.d());
  }
  
  public void a(e parame, an paraman)
  {
    if (bk.a("load-sucess::" + parame.d(), getTag())) {}
    a(a, 0);
    a(b, 8);
    a(c, 8);
    a.a(paraman, false);
    setTag("load-sucess::" + parame.d());
  }
  
  public void b(e parame)
  {
    if (bk.a("load-error::" + parame.d(), getTag())) {
      return;
    }
    a(a, 8);
    a(b, 8);
    a(c, 0);
    setTag("load-error::" + parame.d());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */