package android.support.v7.app;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.layout;
import android.support.v7.appcompat.R.style;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.view.ContextThemeWrapper;
import android.support.v7.view.menu.g;
import android.support.v7.view.menu.i;
import android.support.v7.view.menu.y;
import android.support.v7.view.menu.z;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;

final class AppCompatDelegateImplV7$PanelFeatureState
{
  int background;
  View createdPanelView;
  ViewGroup decorView;
  int featureId;
  Bundle frozenActionViewState;
  Bundle frozenMenuState;
  int gravity;
  boolean isHandled;
  boolean isOpen;
  boolean isPrepared;
  g listMenuPresenter;
  Context listPresenterContext;
  i menu;
  public boolean qwertyMode;
  boolean refreshDecorView;
  boolean refreshMenuContent;
  View shownPanelView;
  boolean wasLastOpen;
  int windowAnimations;
  int x;
  int y;
  
  AppCompatDelegateImplV7$PanelFeatureState(int paramInt)
  {
    featureId = paramInt;
    refreshDecorView = false;
  }
  
  void applyFrozenState()
  {
    if ((menu != null) && (frozenMenuState != null))
    {
      menu.b(frozenMenuState);
      frozenMenuState = null;
    }
  }
  
  public void clearMenuPresenters()
  {
    if (menu != null) {
      menu.b(listMenuPresenter);
    }
    listMenuPresenter = null;
  }
  
  z getListMenuView(y paramy)
  {
    if (menu == null) {
      return null;
    }
    if (listMenuPresenter == null)
    {
      listMenuPresenter = new g(listPresenterContext, R.layout.abc_list_menu_item_layout);
      listMenuPresenter.a(paramy);
      menu.a(listMenuPresenter);
    }
    return listMenuPresenter.a(decorView);
  }
  
  public boolean hasPanelItems()
  {
    boolean bool2 = true;
    boolean bool1;
    if (shownPanelView == null) {
      bool1 = false;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (createdPanelView != null);
      bool1 = bool2;
    } while (listMenuPresenter.a().getCount() > 0);
    return false;
  }
  
  void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (AppCompatDelegateImplV7.PanelFeatureState.SavedState)paramParcelable;
    featureId = featureId;
    wasLastOpen = isOpen;
    frozenMenuState = menuState;
    shownPanelView = null;
    decorView = null;
  }
  
  Parcelable onSaveInstanceState()
  {
    AppCompatDelegateImplV7.PanelFeatureState.SavedState localSavedState = new AppCompatDelegateImplV7.PanelFeatureState.SavedState(null);
    featureId = featureId;
    isOpen = isOpen;
    if (menu != null)
    {
      menuState = new Bundle();
      menu.a(menuState);
    }
    return localSavedState;
  }
  
  void setMenu(i parami)
  {
    if (parami == menu) {}
    do
    {
      return;
      if (menu != null) {
        menu.b(listMenuPresenter);
      }
      menu = parami;
    } while ((parami == null) || (listMenuPresenter == null));
    parami.a(listMenuPresenter);
  }
  
  void setStyle(Context paramContext)
  {
    TypedValue localTypedValue = new TypedValue();
    Resources.Theme localTheme = paramContext.getResources().newTheme();
    localTheme.setTo(paramContext.getTheme());
    localTheme.resolveAttribute(R.attr.actionBarPopupTheme, localTypedValue, true);
    if (resourceId != 0) {
      localTheme.applyStyle(resourceId, true);
    }
    localTheme.resolveAttribute(R.attr.panelMenuListTheme, localTypedValue, true);
    if (resourceId != 0) {
      localTheme.applyStyle(resourceId, true);
    }
    for (;;)
    {
      paramContext = new ContextThemeWrapper(paramContext, 0);
      paramContext.getTheme().setTo(localTheme);
      listPresenterContext = paramContext;
      paramContext = paramContext.obtainStyledAttributes(R.styleable.AppCompatTheme);
      background = paramContext.getResourceId(R.styleable.AppCompatTheme_panelBackground, 0);
      windowAnimations = paramContext.getResourceId(R.styleable.AppCompatTheme_android_windowAnimationStyle, 0);
      paramContext.recycle();
      return;
      localTheme.applyStyle(R.style.Theme_AppCompat_CompactMenu, true);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.AppCompatDelegateImplV7.PanelFeatureState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */