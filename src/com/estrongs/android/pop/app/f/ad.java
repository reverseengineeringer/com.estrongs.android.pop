package com.estrongs.android.pop.app.f;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.dialog.cv;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

abstract class ad
{
  private int a;
  private int b;
  protected int e = 0;
  protected List<String> f;
  protected Button g;
  protected int h = 0;
  protected int i;
  
  ad(y paramy, Button paramButton, int paramInt1, int paramInt2)
  {
    i = paramInt2;
    f = new ArrayList();
    f.addAll(Arrays.asList(y.e(paramy).getResources().getStringArray(paramInt1)));
    paramButton.setOnClickListener(new ae(this, paramy, paramButton));
    e = f.size();
    g = paramButton;
  }
  
  protected int a()
  {
    return f.size();
  }
  
  protected cv a(String[] paramArrayOfString, String paramString, int paramInt1, int paramInt2)
  {
    View localView = k.a(y.e(j)).inflate(2130903415, null);
    Object localObject1 = (Button)localView.findViewById(2131625486);
    Object localObject2 = (Button)localView.findViewById(2131625489);
    if (paramArrayOfString.length > 0)
    {
      a = (paramArrayOfString.length - 1);
      b = (paramArrayOfString.length - 1);
    }
    ((Button)localObject2).setOnClickListener(new ag(this, paramArrayOfString, (Button)localObject2));
    ((Button)localObject2).setText(paramArrayOfString[a]);
    ((Button)localObject1).setOnClickListener(new ai(this, paramArrayOfString, (Button)localObject1));
    ((Button)localObject1).setText(paramArrayOfString[b]);
    localObject1 = (EditText)localView.findViewById(2131625484);
    localObject2 = (EditText)localView.findViewById(2131625487);
    if (paramInt1 > -1) {
      ((EditText)localObject1).setText("" + paramInt1);
    }
    if (paramInt2 > -1) {
      ((EditText)localObject2).setText("" + paramInt2);
    }
    cv localcv = new cv(y.e(j));
    localcv.a(paramString);
    localcv.a(localView);
    localcv.b(2131231270, new am(this, (EditText)localObject1, (EditText)localObject2, paramArrayOfString)).c(2131231265, new al(this)).b(true).a(new ak(this));
    return localcv;
  }
  
  abstract void a(int paramInt, Object paramObject);
  
  protected void a(int paramInt1, String paramString1, int paramInt2, String paramString2)
  {
    String str = "";
    if (paramInt1 > 0) {
      str = paramInt1 + " " + paramString1;
    }
    str = str + " - ";
    paramString1 = str;
    if (paramInt2 > 0) {
      paramString1 = str + paramInt2 + " " + paramString2;
    }
    f.add(f.size() - 1, paramString1);
    h = (a() - 2);
    g.setText((CharSequence)f.get(h));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.f.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */