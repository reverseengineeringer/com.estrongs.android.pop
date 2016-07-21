package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.support.v4.e.r;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class ah
{
  private final ai<?> a;
  
  private ah(ai<?> paramai)
  {
    a = paramai;
  }
  
  public static final ah a(ai<?> paramai)
  {
    return new ah(paramai);
  }
  
  Fragment a(String paramString)
  {
    return a.d.b(paramString);
  }
  
  public aj a()
  {
    return a.k();
  }
  
  public View a(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return a.d.onCreateView(paramView, paramString, paramContext, paramAttributeSet);
  }
  
  public List<Fragment> a(List<Fragment> paramList)
  {
    if (a.d.f == null) {
      return null;
    }
    Object localObject = paramList;
    if (paramList == null) {
      localObject = new ArrayList(c());
    }
    ((List)localObject).addAll(a.d.f);
    return (List<Fragment>)localObject;
  }
  
  public void a(Configuration paramConfiguration)
  {
    a.d.a(paramConfiguration);
  }
  
  public void a(Parcelable paramParcelable, List<Fragment> paramList)
  {
    a.d.a(paramParcelable, paramList);
  }
  
  public void a(Fragment paramFragment)
  {
    a.d.a(a, a, paramFragment);
  }
  
  public void a(r<String, bk> paramr)
  {
    a.a(paramr);
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    a.b(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  public void a(boolean paramBoolean)
  {
    a.a(paramBoolean);
  }
  
  public boolean a(Menu paramMenu)
  {
    return a.d.a(paramMenu);
  }
  
  public boolean a(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    return a.d.a(paramMenu, paramMenuInflater);
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    return a.d.a(paramMenuItem);
  }
  
  public bk b()
  {
    return a.l();
  }
  
  public void b(Menu paramMenu)
  {
    a.d.b(paramMenu);
  }
  
  public boolean b(MenuItem paramMenuItem)
  {
    return a.d.b(paramMenuItem);
  }
  
  public int c()
  {
    ArrayList localArrayList = a.d.f;
    if (localArrayList == null) {
      return 0;
    }
    return localArrayList.size();
  }
  
  public void d()
  {
    a.d.k();
  }
  
  public Parcelable e()
  {
    return a.d.j();
  }
  
  public List<Fragment> f()
  {
    return a.d.i();
  }
  
  public void g()
  {
    a.d.l();
  }
  
  public void h()
  {
    a.d.m();
  }
  
  public void i()
  {
    a.d.n();
  }
  
  public void j()
  {
    a.d.o();
  }
  
  public void k()
  {
    a.d.p();
  }
  
  public void l()
  {
    a.d.q();
  }
  
  public void m()
  {
    a.d.r();
  }
  
  public void n()
  {
    a.d.t();
  }
  
  public void o()
  {
    a.d.u();
  }
  
  public boolean p()
  {
    return a.d.g();
  }
  
  public void q()
  {
    a.n();
  }
  
  public void r()
  {
    a.o();
  }
  
  public void s()
  {
    a.p();
  }
  
  public r<String, bk> t()
  {
    return a.q();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */