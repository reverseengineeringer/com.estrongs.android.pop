package com.estrongs.android.pop.app.unlock;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public class UnLockCardView
  extends LinearLayout
{
  public g a;
  private RoundedImageView b;
  private TextView c;
  private TextView d;
  private TextView e;
  private String f;
  
  public UnLockCardView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public UnLockCardView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  public UnLockCardView(Context paramContext, String paramString)
  {
    super(paramContext);
    f = paramString;
    a();
  }
  
  private void a()
  {
    View localView = LayoutInflater.from(getContext()).inflate(2130903453, null);
    b = ((RoundedImageView)localView.findViewById(2131625594));
    c = ((TextView)localView.findViewById(2131625595));
    d = ((TextView)localView.findViewById(2131625596));
    e = ((TextView)localView.findViewById(2131625597));
    addView(localView, new LinearLayout.LayoutParams(-1, -2));
  }
  
  public void a(com.estrongs.android.k.d paramd)
  {
    Object localObject = paramd.b();
    String str3;
    String str5;
    if (localObject != null)
    {
      String str1 = ((com.estrongs.android.k.f)localObject).a("card_title");
      String str2 = ((com.estrongs.android.k.f)localObject).a("card_icon");
      str3 = ((com.estrongs.android.k.f)localObject).a("card_msg");
      String str4 = ((com.estrongs.android.k.f)localObject).a("card_result");
      str5 = ((com.estrongs.android.k.f)localObject).a("card_button");
      localObject = ((com.estrongs.android.k.f)localObject).a("show_result");
      if (!TextUtils.isEmpty(str2)) {
        com.estrongs.android.b.a.c.a(b, str2, 2130837595, new d(this));
      }
      if (!TextUtils.isEmpty(str1)) {
        c.setText(str1);
      }
      if ("1".equals(localObject))
      {
        if (!TextUtils.isEmpty(str4)) {
          d.setText(str4);
        }
        e.setText(2131232508);
        setOnClickListener(new e(this, paramd));
      }
    }
    else
    {
      try
      {
        com.estrongs.android.j.c.a(getContext()).a("unlockedc", "show");
        return;
      }
      catch (Exception paramd)
      {
        paramd.printStackTrace();
        return;
      }
    }
    if (!TextUtils.isEmpty(str3)) {
      d.setText(str3);
    }
    if (!TextUtils.isEmpty(str5)) {
      e.setText(str5);
    }
    setOnClickListener(s.a().a(getContext(), paramd.g(), new f(this), f));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.unlock.UnLockCardView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */