package com.estrongs.android.pop.app.b.c;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.h.a.e;
import com.estrongs.android.pop.app.b.i;
import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.util.j;
import com.estrongs.fs.x;
import java.io.File;
import java.util.List;
import org.json.JSONObject;

public class a
  extends h
{
  public a(Context paramContext)
  {
    super(paramContext);
  }
  
  private void a(int paramInt)
  {
    Object localObject = null;
    switch (paramInt)
    {
    }
    for (;;)
    {
      try
      {
        if (TextUtils.isEmpty((CharSequence)localObject)) {
          break label116;
        }
        JSONObject localJSONObject = new JSONObject();
        localJSONObject.put("open_format", localObject);
        com.estrongs.android.j.c.a(n).a("log", localJSONObject);
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      localObject = "srv";
      continue;
      label116:
      return;
      String str = "pic";
      continue;
      str = "mus";
      continue;
      str = "vid";
      continue;
      str = "doc";
      continue;
      str = "cld";
      continue;
      str = "apk";
    }
  }
  
  private void a(com.estrongs.android.pop.app.b.b paramb, int paramInt, View paramView)
  {
    i locali = (i)i.get(paramInt);
    Object localObject = (ImageView)paramView.findViewById(2131625161);
    CheckBox localCheckBox = (CheckBox)paramView.findViewById(2131625162);
    TextView localTextView1 = (TextView)paramView.findViewById(2131625163);
    TextView localTextView2 = (TextView)paramView.findViewById(2131625164);
    switch (c)
    {
    default: 
      e.a(new f(new File(locali.getAbsolutePath())), (ImageView)localObject);
      if (locali.length() == -1L)
      {
        localObject = new File(locali.getAbsolutePath());
        localTextView1.setText(((File)localObject).getName());
        if (((File)localObject).list() == null) {
          localTextView2.setText("0 " + n.getString(2131231325));
        }
      }
      break;
    }
    for (;;)
    {
      localCheckBox.setChecked(a);
      localCheckBox.setOnCheckedChangeListener(new b(this, locali, paramb));
      paramView.setOnClickListener(new c(this, paramb, locali));
      paramView.setVisibility(0);
      return;
      e.a(new f(new File(locali.getAbsolutePath())), (ImageView)localObject);
      break;
      e.a(new com.estrongs.fs.impl.v.a(new File(locali.getAbsolutePath())), (ImageView)localObject);
      break;
      e.a(new com.estrongs.fs.impl.n.a(new File(locali.getAbsolutePath())), (ImageView)localObject);
      break;
      e.a(new com.estrongs.fs.impl.f.a(new f(new File(locali.getAbsolutePath()))), (ImageView)localObject);
      break;
      e.a(new f(new File(locali.getAbsolutePath())), (ImageView)localObject);
      break;
      e.a(new x(locali.getAbsolutePath()), (ImageView)localObject);
      break;
      localTextView2.setText(((File)localObject).list().length + " " + n.getString(2131231325));
      continue;
      localTextView1.setText(locali.getName());
      localTextView2.setText(j.e(locali.length()));
    }
  }
  
  protected View a()
  {
    View localView = LayoutInflater.from(n).inflate(2130903319, null);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, n.getResources().getDimensionPixelSize(2131165305));
    h.addView(localView, localLayoutParams);
    return localView;
  }
  
  protected void a(View paramView)
  {
    super.a(paramView);
    h.setOrientation(1);
  }
  
  public void a(Object paramObject)
  {
    int i = 4;
    super.a(paramObject);
    paramObject = (com.estrongs.android.pop.app.b.b)paramObject;
    if (i.size() > 4) {}
    for (;;)
    {
      switch (i)
      {
      default: 
        return;
        i = i.size();
      }
    }
    a((com.estrongs.android.pop.app.b.b)paramObject, 3, m);
    a((com.estrongs.android.pop.app.b.b)paramObject, 2, l);
    a((com.estrongs.android.pop.app.b.b)paramObject, 1, k);
    a((com.estrongs.android.pop.app.b.b)paramObject, 0, j);
  }
  
  protected void b()
  {
    h.setOrientation(1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */