.class public abstract Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Landroid/support/v4/view/el;


# static fields
.field private static final f:Z


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dianxinos/lockscreen/fragment/TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/dianxinos/lockscreen/fragment/c;

.field protected e:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    sput-boolean v0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->d:Lcom/dianxinos/lockscreen/fragment/c;

    return-void
.end method

.method private final b()V
    .locals 3

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->a(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->a:I

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "tab"

    iget v2, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->a:I

    :cond_0
    sget-boolean v0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->f:Z

    if-eqz v0, :cond_1

    const-string v0, "DxFragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabs.size() == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/dianxinos/lockscreen/fragment/c;

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/aj;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->c:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/dianxinos/lockscreen/fragment/c;-><init>(Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;Landroid/content/Context;Landroid/support/v4/app/aj;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->d:Lcom/dianxinos/lockscreen/fragment/c;

    sget v0, Lcom/dianxinos/lockscreen/ac;->pager:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->e:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->d:Lcom/dianxinos/lockscreen/fragment/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bw;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/el;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->d()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->e:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->f()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->e:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/dianxinos/lockscreen/fragment/b;

    invoke-direct {v2, p0, v0}, Lcom/dianxinos/lockscreen/fragment/b;-><init>(Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract a(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dianxinos/lockscreen/fragment/TabInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(IFI)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;

    iget-object v2, v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/fragment/a;->j()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 3

    iput p1, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->a:I

    iget v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->b:I

    iget v1, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->a:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->b:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->b:I

    iget-object v1, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->c:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;

    iget-object v1, v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    invoke-virtual {v1}, Lcom/dianxinos/lockscreen/fragment/a;->g()V

    iget-object v1, v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    invoke-virtual {v1}, Lcom/dianxinos/lockscreen/fragment/a;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".onScrollOut must call super.onScrollOut()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->c:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;

    iget-object v1, v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    invoke-virtual {v1}, Lcom/dianxinos/lockscreen/fragment/a;->e()V

    iget-object v1, v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    invoke-virtual {v1}, Lcom/dianxinos/lockscreen/fragment/a;->k()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".onScrollIn must call super.onScrollIn()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->a:I

    iput v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->b:I

    goto/16 :goto_0
.end method

.method protected c(I)Lcom/dianxinos/lockscreen/fragment/TabInfo;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/fragment/TabInfo;->a()I

    move-result v4

    if-eq v4, p1, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()Z
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->c:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;

    iget-object v1, v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/fragment/a;->d()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()Landroid/os/Message;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->b()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->d:Lcom/dianxinos/lockscreen/fragment/c;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/fragment/c;->notifyDataSetChanged()V

    iput-object v1, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->d:Lcom/dianxinos/lockscreen/fragment/c;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bw;)V

    iput-object v1, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserLeaveHint()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/DxFragmentActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;

    iget-object v2, v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/fragment/a;->i()V

    goto :goto_0

    :cond_1
    return-void
.end method
