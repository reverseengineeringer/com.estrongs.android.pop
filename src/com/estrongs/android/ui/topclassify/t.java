package com.estrongs.android.ui.topclassify;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.ui.c.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class t
  extends b
{
  private f d;
  private a e;
  private View.OnClickListener f = new v(this);
  
  public t(String paramString, Context paramContext, a parama)
  {
    super(paramString, paramContext);
    e = parama;
    d = new f(paramContext);
    d.a(new u(this));
    c();
  }
  
  private void a(Map<Integer, k> paramMap)
  {
    if (c != null)
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        d locald = (d)localIterator.next();
        if ("log://".equals(a)) {
          e = ((k)paramMap.get(Integer.valueOf(1)));
        } else if ("archive://".equals(a)) {
          e = ((k)paramMap.get(Integer.valueOf(2)));
        } else if ("encrypt://".equals(a)) {
          e = ((k)paramMap.get(Integer.valueOf(3)));
        } else if ("music://".equals(a)) {
          e = ((k)paramMap.get(Integer.valueOf(6)));
        } else if ("video://".equals(a)) {
          e = ((k)paramMap.get(Integer.valueOf(7)));
        } else if ("book://".equals(a)) {
          e = ((k)paramMap.get(Integer.valueOf(5)));
        } else if ("app://".equals(a)) {
          e = ((k)paramMap.get(Integer.valueOf(4)));
        } else if ("finder://".equals(a)) {
          e = ((k)paramMap.get(Integer.valueOf(8)));
        } else if ("pic://".equals(a)) {
          e = ((k)paramMap.get(Integer.valueOf(9)));
        }
      }
    }
  }
  
  private String b(int paramInt)
  {
    if (paramInt >= 999) {
      return "999+";
    }
    return paramInt + "";
  }
  
  private int i()
  {
    return 2130903264;
  }
  
  public void a()
  {
    c = new ArrayList();
    a(new d("log://", 2130838075, 2131231584));
    a(new d("encrypt://", 2130838071, 2131231420));
    a(new d("archive://", 2130838067, 2131231581));
    a(new d("clean://", 2130838065, 2131231573));
    a(new d("app://", 2130838062, 2131231129));
    a(new d("pic://", 2130838074, 2131231138));
    a(new d("music://", 2130838077, 2131231585));
    a(new d("video://", 2130838083, 2131231135));
    a(new d("net://", 2130838066, 2131231580));
    a(new d("download://", 2130838070, 2131231583));
    a(new d("book://", 2130838069, 2131231130));
    a(new d("mynetwork://", 2130838068, 2131231582));
    a(new d("recycle://", 2130838078, 2131232258));
    a(new d("remote://", 2130838084, 2131231586));
    a(new d("applocker", 2130838063, 2131231579));
  }
  
  public void c() {}
  
  public List<View> d()
  {
    if ((c != null) && (c.size() > 0))
    {
      ArrayList localArrayList = new ArrayList();
      LayoutInflater localLayoutInflater = LayoutInflater.from(a);
      Iterator localIterator = c.iterator();
      if (localIterator.hasNext())
      {
        d locald = (d)localIterator.next();
        View localView = localLayoutInflater.inflate(i(), null);
        localView.setFocusable(true);
        localView.setBackgroundResource(2130837674);
        ImageView localImageView = (ImageView)localView.findViewById(2131624983);
        TextView localTextView1 = (TextView)localView.findViewById(2131624985);
        TextView localTextView2 = (TextView)localView.findViewById(2131624984);
        localImageView.setImageResource(b);
        localTextView1.setText(c);
        if ((e != null) && (e.a > 0) && (e.d)) {
          switch (e.b)
          {
          default: 
            label212:
            localTextView2.setVisibility(0);
          }
        }
        for (;;)
        {
          localView.setTag(locald);
          localView.setOnClickListener(f);
          localArrayList.add(localView);
          break;
          localTextView2.setBackgroundResource(2130837974);
          localTextView2.setTextColor(a.getResources().getColor(2131558745));
          if (e.a <= 1)
          {
            localTextView2.setText(b(e.a) + " " + a.getString(2131231131));
            break label212;
          }
          localTextView2.setText(b(e.a) + " " + a.getString(2131231132));
          break label212;
          localTextView2.setBackgroundResource(2130837974);
          localTextView2.setTextColor(a.getResources().getColor(2131558745));
          localTextView2.setText(b(e.a) + "");
          break label212;
          localTextView2.setBackgroundResource(2130837975);
          localTextView2.setText("");
          break label212;
          localTextView2.setBackgroundResource(2130837976);
          localTextView2.setTextColor(a.getResources().getColor(2131558505));
          localTextView2.setText(b(e.a) + "");
          break label212;
          localTextView2.setVisibility(8);
        }
      }
      return localArrayList;
    }
    return null;
  }
  
  public int e()
  {
    return 4;
  }
  
  public void h()
  {
    if (d != null) {
      d.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.topclassify.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */