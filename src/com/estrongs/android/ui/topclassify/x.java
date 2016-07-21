package com.estrongs.android.ui.topclassify;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;
import com.estrongs.fs.i;
import com.estrongs.fs.l;
import com.estrongs.fs.m;
import com.estrongs.fs.n;
import com.estrongs.fs.o;
import com.estrongs.fs.p;
import com.estrongs.fs.q;
import com.estrongs.fs.r;
import com.estrongs.fs.s;
import com.estrongs.fs.t;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class x
  extends b
{
  public String d;
  public String e;
  public String f;
  public String g;
  public String h;
  public String i;
  public String j;
  public String k;
  public String l;
  private View.OnClickListener m = new y(this);
  
  public x(String paramString, Context paramContext)
  {
    super(paramString, paramContext);
  }
  
  private void a(String paramString, int paramInt)
  {
    Object localObject = null;
    for (;;)
    {
      try
      {
        if (!ap.X(paramString)) {
          break label79;
        }
        str = "pic_lb";
        if (ap.V(paramString)) {
          str = "music_lb";
        }
        if (ap.Z(paramString)) {
          str = "video_lb";
        }
        if (!ap.ae(paramString)) {
          break label84;
        }
        str = "doc_lb";
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return;
      }
      if ((!TextUtils.isEmpty(str)) && (!TextUtils.isEmpty(paramString))) {
        com.estrongs.android.j.c.a(a).a(str, paramString);
      }
      return;
      label79:
      String str = null;
      continue;
      label84:
      paramString = (String)localObject;
      if (paramInt == 0) {
        paramString = "lp_ltplay";
      }
      if (paramInt == 3) {
        paramString = "lp_ltcreate";
      }
      if (paramInt == 1) {
        paramString = "lp_down";
      }
      if (paramInt == 10) {
        paramString = "lp_record";
      }
      if (paramInt == 4) {
        paramString = "lp_office";
      }
    }
  }
  
  public static i b(int paramInt)
  {
    switch (paramInt)
    {
    case 2: 
    case 6: 
    default: 
      return null;
    case 0: 
      return new q();
    case 3: 
      return new p();
    case 1: 
      return new m();
    case 5: 
      return new n();
    case 4: 
      return new t();
    case 7: 
      return new l();
    case 8: 
      return new o();
    case 9: 
      return new s();
    }
    return new r();
  }
  
  private void b(d paramd)
  {
    if (TextUtils.isEmpty(a)) {}
    while (!(a instanceof FileExplorerActivity)) {
      return;
    }
    cr localcr = ((FileExplorerActivity)a).O();
    paramd = new c(a, d);
    paramd.a(c());
    localcr.c(paramd);
  }
  
  private int h()
  {
    return 2130903144;
  }
  
  private boolean i()
  {
    return ("book://".equalsIgnoreCase(b)) || ("video://".equalsIgnoreCase(b)) || ("music://".equalsIgnoreCase(b)) || ("pic://".equalsIgnoreCase(b)) || ("gallery://".equalsIgnoreCase(b));
  }
  
  protected abstract int c();
  
  public List<View> d()
  {
    if ((c != null) && (c.size() > 0))
    {
      ArrayList localArrayList = new ArrayList();
      LayoutInflater localLayoutInflater = LayoutInflater.from(a);
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        d locald = (d)localIterator.next();
        View localView = localLayoutInflater.inflate(h(), null);
        localView.setFocusable(true);
        localView.setBackgroundResource(2130837674);
        ImageView localImageView = (ImageView)localView.findViewById(2131624541);
        TextView localTextView = (TextView)localView.findViewById(2131624542);
        localImageView.setImageResource(b);
        localTextView.setText(c);
        localView.setTag(locald);
        localView.setOnClickListener(m);
        localArrayList.add(localView);
      }
      return localArrayList;
    }
    return null;
  }
  
  public int e()
  {
    return 2;
  }
  
  protected void g()
  {
    super.g();
    if (i())
    {
      d = (b + a.getString(2131231168));
      e = (b + a.getString(2131231167));
      f = (b + a.getString(2131231166));
      g = (b + a.getString(2131231158));
      if (c() != 0) {
        h = (b + a.getString(c()));
      }
      i = (b + a.getString(2131231171));
      j = (b + a.getString(2131231159));
      k = (b + a.getString(2131231169));
      l = (b + a.getString(2131231165));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.topclassify.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */