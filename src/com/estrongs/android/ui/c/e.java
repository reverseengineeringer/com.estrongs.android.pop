package com.estrongs.android.ui.c;

import android.app.Activity;
import android.content.res.Configuration;
import android.support.v7.widget.RecyclerView;
import android.view.View.OnTouchListener;
import com.estrongs.android.j.d;
import com.estrongs.android.pop.app.b.k;
import com.estrongs.android.pop.app.messagebox.z;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.view.cr;
import com.estrongs.android.view.dw;
import com.estrongs.fs.h;
import com.estrongs.fs.x;
import java.util.ArrayList;
import java.util.List;

public class e
  extends cr
{
  private RecyclerView a;
  private k b;
  private a c;
  
  public e(Activity paramActivity, com.estrongs.fs.util.a.a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
  }
  
  protected int a()
  {
    return 2130903266;
  }
  
  public void a(int paramInt) {}
  
  public void a(Configuration paramConfiguration)
  {
    super.a(paramConfiguration);
    c.notifyDataSetChanged();
  }
  
  public void a(View.OnTouchListener paramOnTouchListener)
  {
    a.setOnTouchListener(paramOnTouchListener);
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    b.a(true);
    if (O != null) {
      O.a(this, true);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    if (!paramBoolean) {
      b.c();
    }
  }
  
  public h b()
  {
    if (D == null) {
      D = new x("#home_page#");
    }
    return D;
  }
  
  public void b(boolean paramBoolean)
  {
    if (b != null) {
      b.a(paramBoolean);
    }
    if (c != null) {
      c.c();
    }
  }
  
  public String c()
  {
    return "#home_page#";
  }
  
  protected void i()
  {
    a = ((RecyclerView)b(2131624989));
    c = new a(ag, a);
    a.setAdapter(c);
    b = new k(ag, a);
    b.a(new f(this));
    z.a(ag).a(new g(this));
    d.b(ah);
  }
  
  public void i_()
  {
    if (c != null) {
      c.b();
    }
    super.i_();
    if (b != null) {
      b.a();
    }
    if (c != null) {
      c.b();
    }
  }
  
  public void l()
  {
    super.l();
    if (c != null) {
      c.a();
    }
    d.b(ah);
  }
  
  public void l_()
  {
    c.notifyDataSetChanged();
  }
  
  protected void n() {}
  
  public List<h> o()
  {
    return new ArrayList(b.d());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */