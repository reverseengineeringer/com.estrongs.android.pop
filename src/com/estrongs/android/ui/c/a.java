package com.estrongs.android.ui.c;

import android.app.Activity;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.c.b.f;
import com.estrongs.android.ui.c.b.l;
import com.estrongs.android.ui.c.b.u;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ay;
import com.estrongs.android.util.bb;
import com.estrongs.android.view.aw;
import com.estrongs.android.view.cb;
import com.estrongs.android.widget.HeaderGridView;
import com.estrongs.android.widget.c;
import com.estrongs.fs.h;
import com.estrongs.fs.n;

public class a
  extends aw
{
  private static View al = null;
  private f a;
  private com.estrongs.android.ui.c.b.b ai;
  private bb aj;
  private boolean ak = false;
  ViewGroup b;
  private l c;
  private u d;
  
  public a(Activity paramActivity, com.estrongs.fs.util.a.a parama, cb paramcb)
  {
    super(paramActivity, parama, paramcb);
  }
  
  private void a(View paramView, String paramString1, String paramString2)
  {
    LinearLayout localLinearLayout = (LinearLayout)((ViewGroup)paramView.getParent()).findViewById(2131362378);
    ImageView localImageView = (ImageView)localLinearLayout.findViewById(2131362380);
    boolean bool = ad.a(FexApplication.a()).P(paramString2);
    localLinearLayout.setOnClickListener(new e(this, paramView, paramString2, localImageView));
    ((TextView)localLinearLayout.findViewById(2131362379)).setText(paramString1);
    if (bool)
    {
      paramView.setVisibility(0);
      localImageView.setImageResource(2130837512);
      return;
    }
    paramView.setVisibility(8);
    localImageView.setImageResource(2130837511);
  }
  
  public static void m()
  {
    al = null;
  }
  
  protected int a()
  {
    return 2130903156;
  }
  
  public void a(int paramInt) {}
  
  public void a(View.OnTouchListener paramOnTouchListener)
  {
    b.setOnTouchListener(paramOnTouchListener);
  }
  
  protected void a(h paramh, TypedMap paramTypedMap) {}
  
  public void a_()
  {
    super.a_();
    ((ViewGroup)k(2131362372)).removeView(al);
  }
  
  public h b()
  {
    if (w == null) {
      w = new n("#home_page#");
    }
    return w;
  }
  
  public void b(boolean paramBoolean)
  {
    if (a != null) {
      a.l();
    }
    if (c != null) {
      c.l();
    }
    if (ai != null) {
      ai.l();
    }
  }
  
  public String c()
  {
    return "#home_page#";
  }
  
  protected void i()
  {
    b = ((ViewGroup)k(2131362372));
    if (al != null)
    {
      b.removeAllViews();
      if (al.getParent() != null) {
        ((ViewGroup)al.getParent()).removeView(al);
      }
    }
    for (boolean bool = true;; bool = false)
    {
      Object localObject = new ViewGroup.LayoutParams(-1, -2);
      b.addView(al, (ViewGroup.LayoutParams)localObject);
      ((LinearLayout)k(2131362373)).setVisibility(8);
      localObject = (LinearLayout)k(2131362375);
      a = new f((FileExplorerActivity)ad, (LinearLayout)localObject, bool);
      a.a(bool);
      localObject = (LinearLayout)k(2131362376);
      c = new l((FileExplorerActivity)ad, (LinearLayout)localObject, bool);
      c.a(bool);
      localObject = (LinearLayout)k(2131362381);
      d = new u((FileExplorerActivity)ad, (LinearLayout)localObject, bool);
      d.a(bool);
      LinearLayout localLinearLayout = (LinearLayout)k(2131362383);
      ai = new com.estrongs.android.ui.c.b.b((FileExplorerActivity)ad, localLinearLayout, bool);
      ai.a(bool);
      aj = new b(this);
      ay.a(aj);
      a.a();
      c.a();
      d.a();
      ai.a();
      a((View)localObject, ad.getString(2131428507), "tookkit_block");
      a(localLinearLayout, ad.getString(2131428038), "collection_block");
      T.post(new d(this));
      return;
      al = g.a(FexApplication.a()).inflate(2130903157, null);
    }
  }
  
  protected void n()
  {
    g = new HeaderGridView(ad);
    f = new c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */