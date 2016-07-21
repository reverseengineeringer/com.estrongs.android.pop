package com.estrongs.android.ui.adapter;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.guesture.d;
import com.estrongs.android.ui.theme.at;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public class s
  extends BaseExpandableListAdapter
{
  private Context a;
  private Handler b;
  private ArrayList<x> c;
  private Drawable d;
  private Drawable e;
  private final int f = 3;
  private PackageManager g;
  private HashMap<String, Thread> h = new HashMap();
  
  public s(Context paramContext, Handler paramHandler)
  {
    a = paramContext;
    b = paramHandler;
    g = a.getPackageManager();
    e = at.a(a).a(2130838008);
    d = at.a(a).a(2130838044);
    a();
  }
  
  private void a()
  {
    c = new ArrayList();
    x localx = new x(this, null);
    a = b(2131231887);
    c.add(localx);
    localx = new x(this, null);
    a = b(2131231532);
    b = new LinkedList();
    Object localObject = new String[6];
    localObject[0] = "back";
    localObject[1] = "refresh";
    localObject[2] = "close_current";
    localObject[3] = "exit";
    localObject[4] = "show_navi";
    localObject[5] = "open_settings";
    int i = 0;
    w localw;
    while (i < localObject.length)
    {
      localw = new w(this);
      c = localObject[i];
      b = d.a(a, localObject[i]);
      b.add(localw);
      i += 1;
    }
    c.add(localx);
    localx = new x(this, null);
    a = b(2131232464);
    b = new LinkedList();
    localObject = new LinkedList();
    ((List)localObject).add("open_window#home_page#");
    ((List)localObject).add("open_window#home#");
    ((List)localObject).add("open_lib_pic");
    ((List)localObject).add("open_lib_music");
    ((List)localObject).add("open_lib_video");
    ((List)localObject).add("open_lib_text");
    ((List)localObject).add("open_windowmynetwork://");
    if (!z.d) {
      ((List)localObject).add("open_windowsmb://");
    }
    if (!z.U) {
      ((List)localObject).add("open_windownet://");
    }
    ((List)localObject).add("open_windowftp://");
    if (z.e) {
      ((List)localObject).add("open_windowbt://");
    }
    if (z.j) {
      ((List)localObject).add("open_windowapp://user");
    }
    if (!z.T) {
      ((List)localObject).add("open_windowdownload://");
    }
    if (!z.B) {
      ((List)localObject).add("open_windowtask_manager");
    }
    ((List)localObject).add("open_windowdu://");
    if (!z.ae) {
      ((List)localObject).add("open_windowremote://");
    }
    if (!z.D) {
      ((List)localObject).add("open_windownet_manager");
    }
    if (!z.af) {
      ((List)localObject).add("open_windowclipboard");
    }
    if (!z.Z) {
      ((List)localObject).add("open_windowhide_list");
    }
    if (!z.C) {
      ((List)localObject).add("open_windowroot_explorer");
    }
    if (!z.ag) {
      ((List)localObject).add("open_windowrecycle://");
    }
    i = 0;
    while (i < ((List)localObject).size())
    {
      localw = new w(this);
      c = ((String)((List)localObject).get(i));
      b = d.b(a, c);
      b.add(localw);
      i += 1;
    }
    c.add(localx);
    localx = new x(this, null);
    a = b(2131231531);
    b = new LinkedList();
    c.add(localx);
    new v(this, null).execute(new Void[0]);
  }
  
  private String b(int paramInt)
  {
    return a.getString(paramInt);
  }
  
  public w a(int paramInt1, int paramInt2)
  {
    Object localObject = a(paramInt1);
    try
    {
      localObject = (w)b.get(paramInt2);
      return (w)localObject;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public x a(int paramInt)
  {
    return (x)c.get(paramInt);
  }
  
  public long getChildId(int paramInt1, int paramInt2)
  {
    return paramInt2;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null)
    {
      paramViewGroup = k.a(a).inflate(2130903287, null);
      paramViewGroup.getPaddingLeft();
      paramViewGroup.getPaddingRight();
      paramViewGroup.setBackgroundResource(2130838308);
      paramViewGroup.setPadding(g.a(a, 15.0F), 0, g.a(a, 15.0F), 0);
    }
    paramView = a(paramInt1, paramInt2);
    Object localObject = (ImageView)paramViewGroup.findViewById(2131625045);
    if (a == null) {
      ((ImageView)localObject).setVisibility(8);
    }
    for (;;)
    {
      localObject = (TextView)paramViewGroup.findViewById(2131625046);
      ((TextView)localObject).setText(b);
      ((TextView)localObject).setTextColor(a.getResources().getColor(2131558505));
      ((RadioButton)paramViewGroup.findViewById(2131625047)).setVisibility(8);
      if ((paramInt1 == 3) && (a == null) && ((Thread)h.get(c) == null))
      {
        localObject = new t(this, paramView);
        ((Thread)localObject).start();
        h.put(c, localObject);
      }
      return paramViewGroup;
      ((ImageView)localObject).setVisibility(0);
      ((ImageView)localObject).setImageDrawable(a);
    }
  }
  
  public int getChildrenCount(int paramInt)
  {
    List localList = ab;
    if (localList == null) {
      return 0;
    }
    return localList.size();
  }
  
  public int getGroupCount()
  {
    return 4;
  }
  
  public long getGroupId(int paramInt)
  {
    return paramInt;
  }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null)
    {
      paramViewGroup = k.a(a).inflate(2130903258, null);
      paramViewGroup.setMinimumHeight(g.a(a, 48.0F));
    }
    paramViewGroup.findViewById(2131624962).setVisibility(8);
    paramView = a(paramInt);
    TextView localTextView = (TextView)paramViewGroup.findViewById(2131624537);
    localTextView.setTextColor(at.a(a).c(2131558505));
    localTextView.setText(a);
    paramView = (ImageView)paramViewGroup.findViewById(2131624544);
    if (paramInt > 0)
    {
      if (paramBoolean) {
        paramView.setImageDrawable(d);
      }
      for (;;)
      {
        paramView.setVisibility(0);
        return paramViewGroup;
        paramView.setImageDrawable(e);
      }
    }
    paramView.setVisibility(8);
    return paramViewGroup;
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2)
  {
    return true;
  }
  
  public void onGroupCollapsed(int paramInt)
  {
    Message localMessage = new Message();
    what = 1;
    arg1 = paramInt;
    arg2 = 1;
    b.sendMessage(localMessage);
  }
  
  public void onGroupExpanded(int paramInt)
  {
    Message localMessage = new Message();
    what = 1;
    arg1 = paramInt;
    arg2 = 0;
    b.sendMessage(localMessage);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */