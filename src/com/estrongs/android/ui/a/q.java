package com.estrongs.android.ui.a;

import android.content.Context;
import android.content.pm.PackageManager;
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
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.ui.guesture.d;
import com.estrongs.android.ui.theme.al;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public class q
  extends BaseExpandableListAdapter
{
  private Context a;
  private Handler b;
  private ArrayList<v> c;
  private Drawable d;
  private Drawable e;
  private final int f = 3;
  private PackageManager g;
  private HashMap<String, Thread> h = new HashMap();
  
  public q(Context paramContext, Handler paramHandler)
  {
    a = paramContext;
    b = paramHandler;
    g = a.getPackageManager();
    e = al.a(a).a(2130837511);
    d = al.a(a).a(2130837512);
    a();
  }
  
  private void a()
  {
    c = new ArrayList();
    v localv = new v(this, null);
    a = b(2131428131);
    c.add(localv);
    localv = new v(this, null);
    a = b(2131428382);
    b = new LinkedList();
    Object localObject = new String[6];
    localObject[0] = "back";
    localObject[1] = "refresh";
    localObject[2] = "close_current";
    localObject[3] = "exit";
    localObject[4] = "show_navi";
    localObject[5] = "open_settings";
    int i = 0;
    u localu;
    while (i < localObject.length)
    {
      localu = new u(this);
      c = localObject[i];
      b = d.a(a, localObject[i]);
      b.add(localu);
      i += 1;
    }
    c.add(localv);
    localv = new v(this, null);
    a = b(2131428034);
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
      localu = new u(this);
      c = ((String)((List)localObject).get(i));
      b = d.b(a, c);
      b.add(localu);
      i += 1;
    }
    c.add(localv);
    localv = new v(this, null);
    a = b(2131428381);
    b = new LinkedList();
    c.add(localv);
    new t(this, null).execute(new Void[0]);
  }
  
  private String b(int paramInt)
  {
    return a.getString(paramInt);
  }
  
  public u a(int paramInt1, int paramInt2)
  {
    Object localObject = a(paramInt1);
    try
    {
      localObject = (u)b.get(paramInt2);
      return (u)localObject;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public v a(int paramInt)
  {
    return (v)c.get(paramInt);
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
      paramViewGroup = g.a(a).inflate(2130903168, null);
      int i = paramViewGroup.getPaddingLeft();
      int j = paramViewGroup.getPaddingRight();
      paramViewGroup.setBackgroundResource(2130837980);
      paramViewGroup.setPadding(i, 0, j, 0);
    }
    paramView = a(paramInt1, paramInt2);
    Object localObject = (ImageView)paramViewGroup.findViewById(2131362429);
    if (a == null) {
      ((ImageView)localObject).setVisibility(8);
    }
    for (;;)
    {
      ((TextView)paramViewGroup.findViewById(2131362430)).setText(b);
      ((RadioButton)paramViewGroup.findViewById(2131362431)).setVisibility(8);
      if ((paramInt1 == 3) && (a == null) && ((Thread)h.get(c) == null))
      {
        localObject = new r(this, paramView);
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
      paramViewGroup = g.a(a).inflate(2130903151, null);
      paramViewGroup.setMinimumHeight(a.a(a, 48.0F));
    }
    paramView = a(paramInt);
    TextView localTextView = (TextView)paramViewGroup.findViewById(2131361997);
    localTextView.setTextColor(al.a(a).d(2131230738));
    localTextView.setText(a);
    paramView = (ImageView)paramViewGroup.findViewById(2131362017);
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
 * Qualified Name:     com.estrongs.android.ui.a.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */