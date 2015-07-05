.class public abstract Lcom/estrongs/android/ui/c/b/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field protected b:Landroid/widget/LinearLayout;

.field protected c:Z

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/ui/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Landroid/content/SharedPreferences;

.field protected h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/widget/LinearLayout;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->i:Ljava/util/List;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/c/b/a;->h:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/b/a;->b:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/c/b/a;->c:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "home_page"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->g:Landroid/content/SharedPreferences;

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->r()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->k()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/c/b/a;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->k()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/ui/c/b/a;->a(IZ)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, -0x1

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/a;->b:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->j()I

    move-result v2

    div-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v3, v1, 0x2

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->i:Ljava/util/List;

    mul-int/lit8 v3, v1, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, 0x1

    invoke-direct {v0, v5, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->q()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/ui/c/b/a;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/estrongs/android/ui/c/b/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->d()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/ui/c/b/a;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/estrongs/android/ui/c/b/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 5

    const/4 v2, 0x0

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->j()I

    move-result v0

    mul-int/2addr v0, p1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->j()I

    move-result v3

    mul-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->e()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    invoke-interface {v3, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_0

    div-int/lit8 v0, v1, 0x2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/c/a/a;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/c/a/a;->a(Landroid/view/View;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(IZ)V
    .locals 5

    const/4 v2, 0x0

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->j()I

    move-result v1

    div-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    add-int/lit8 v4, v3, -0x1

    mul-int/lit8 v4, v4, 0x2

    if-gt v1, v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    div-int/lit8 v4, v1, 0x2

    invoke-direct {p0, v4, v0}, Lcom/estrongs/android/ui/c/b/a;->a(ILandroid/view/View;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->f:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->f:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->f:Ljava/util/List;

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->n()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->f:Ljava/util/List;

    goto :goto_0
.end method

.method private n()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->g:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-object v1
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/a;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/c/a/a;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private p()Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/view/View;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-object v0
.end method

.method private q()Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/view/View;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-object v0
.end method

.method private r()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/a;->i:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->h()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->m()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->o()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/c/b/a;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->e()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/c/b/a;->a(IZ)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->b()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/c/b/a;->h:Z

    return-void
.end method

.method protected abstract b()V
.end method

.method protected c()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    if-lez v1, :cond_1

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method protected d()Landroid/widget/LinearLayout;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v1, 0x0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->j()I

    move-result v2

    if-ge v0, v2, :cond_3

    if-lez v0, :cond_0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v9, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->p()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->j()I

    move-result v4

    if-le v4, v9, :cond_1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->i()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->j()I

    move-result v5

    rem-int v5, v0, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    if-nez v2, :cond_2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method protected e()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected abstract g()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract h()V
.end method

.method protected abstract i()I
.end method

.method protected abstract j()I
.end method

.method protected abstract k()I
.end method

.method public l()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/c/b/a;->h:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->m()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/a;->o()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/c/b/a;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/a;->e()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/c/b/a;->a(IZ)V

    return-void
.end method
