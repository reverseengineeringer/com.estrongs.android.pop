package com.estrongs.android.pop.app.analysis.b;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.view.a.a;
import java.util.List;

public abstract class h
  extends Fragment
{
  private j a;
  protected at q;
  
  protected abstract int a();
  
  protected abstract void a(View paramView);
  
  protected abstract String b();
  
  protected String b(int paramInt)
  {
    return q().getString(paramInt);
  }
  
  public void b(List<a> paramList) {}
  
  protected abstract void c();
  
  protected Intent o()
  {
    return getActivity().getIntent();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    c();
    getActivity().setTitle(b());
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(a(), paramViewGroup, false);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if ((a != null) && (!a.isCancelled()))
    {
      a.cancel(true);
      a = null;
    }
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    p();
    a(paramView);
  }
  
  protected at p()
  {
    if (q == null) {
      q = at.a(getActivity());
    }
    return q;
  }
  
  protected Resources q()
  {
    return getActivity().getResources();
  }
  
  protected void r() {}
  
  protected void s() {}
  
  protected void t()
  {
    a = new j(this, null);
    a.a();
  }
  
  public boolean u()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.b.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */