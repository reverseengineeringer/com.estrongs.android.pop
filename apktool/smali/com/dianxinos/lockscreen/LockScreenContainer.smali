.class public Lcom/dianxinos/lockscreen/LockScreenContainer;
.super Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;


# instance fields
.field private f:Z

.field private g:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/LockScreenContainer;->f:Z

    return-void
.end method

.method private g()V
    .locals 4

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/LockScreenContainer;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".action.EXIT_HOME"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/dianxinos/lockscreen/LockScreenContainer;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    sget v0, Lcom/dianxinos/lockscreen/ad;->fragment_tab_activity:I

    return v0
.end method

.method protected a(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dianxinos/lockscreen/fragment/TabInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x1

    new-instance v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;

    const/4 v1, 0x0

    const-string v2, ""

    const-class v3, Lcom/dianxinos/lockscreen/s;

    invoke-direct {v0, v1, v2, v3}, Lcom/dianxinos/lockscreen/fragment/TabInfo;-><init>(ILjava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;

    const-string v1, ""

    const-class v2, Lcom/dianxinos/lockscreen/j;

    invoke-direct {v0, v4, v1, v2}, Lcom/dianxinos/lockscreen/fragment/TabInfo;-><init>(ILjava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v4
.end method

.method public a(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->a(I)V

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/LockScreenContainer;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/LockScreenContainer;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/LockScreenContainer;->f:Z

    :cond_0
    return-void
.end method

.method public a(IFI)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->a(IFI)V

    const/high16 v0, 0x3f400000    # 0.75f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/LockScreenContainer;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/LockScreenContainer;->e:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->b(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/LockScreenContainer;->finish()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    :try_start_0
    const-class v0, Landroid/support/v4/view/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v1, Lcom/dianxinos/lockscreen/t;

    iget-object v2, p0, Lcom/dianxinos/lockscreen/LockScreenContainer;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/dianxinos/lockscreen/t;-><init>(Lcom/dianxinos/lockscreen/LockScreenContainer;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/dianxinos/lockscreen/LockScreenContainer;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/LockScreenContainer;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x480000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/LockScreenContainer;->c()V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/LockScreenContainer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/LockScreenContainer;->g:Landroid/os/PowerManager;

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/LockScreenContainer;->g()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->onDestroy()V

    invoke-static {p0}, Lcom/dianxinos/lockscreen/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/c;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/LockScreenContainer;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b()Lcom/dianxinos/lockscreen/fragment/a;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/j;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/LockScreenContainer;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/LockScreenContainer;->g:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/LockScreenContainer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/i;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
