.class public abstract Lcom/estrongs/android/ui/controller/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field protected b:Z

.field protected c:Z

.field protected d:Z

.field protected e:Lcom/estrongs/android/ui/theme/at;

.field protected f:Lcom/estrongs/android/pop/ad;

.field protected g:Landroid/view/LayoutInflater;

.field protected h:Landroid/os/Handler;

.field protected i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

.field protected j:I

.field protected k:I

.field protected l:Lcom/estrongs/android/ui/f/l;

.field protected m:Landroid/view/View$OnKeyListener;

.field protected n:Lcom/estrongs/android/ui/d/a;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/estrongs/android/ui/controller/a;->b:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/controller/a;->d:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/estrongs/android/ui/controller/a;->l:Lcom/estrongs/android/ui/f/l;

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/controller/a;->b:Z

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/a;->b:Z

    iput-boolean v0, p0, Lcom/estrongs/android/ui/controller/a;->c:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cu;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/controller/a;->d:Z

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/a;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/controller/a;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/a;->e:Lcom/estrongs/android/ui/theme/at;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/a;->f:Lcom/estrongs/android/pop/ad;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/a;->g:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/a;->h:Landroid/os/Handler;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()V
.end method

.method public a(IF)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->n:Lcom/estrongs/android/ui/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->n:Lcom/estrongs/android/ui/d/a;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/d/a;->a(IF)V

    :cond_0
    return-void
.end method

.method public abstract a(IIF)V
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/controller/a;->c:Z

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/a;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/controller/a;->c:Z

    iput-boolean v0, p0, Lcom/estrongs/android/ui/controller/a;->b:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/ui/d/h;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->n:Lcom/estrongs/android/ui/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->n:Lcom/estrongs/android/ui/d/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/d/a;->a(Lcom/estrongs/android/ui/d/h;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/android/ui/d/h;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->n:Lcom/estrongs/android/ui/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->n:Lcom/estrongs/android/ui/d/a;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/d/a;->a(Lcom/estrongs/android/ui/d/h;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/android/view/cr;Ljava/lang/String;)V
    .locals 10

    invoke-virtual {p1}, Lcom/estrongs/android/view/cr;->aA()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {p1, p2}, Lcom/estrongs/android/ui/controller/bl;->a(Lcom/estrongs/android/view/cr;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0e05c8

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    new-instance v4, Lcom/estrongs/android/ui/addressbar/b;

    invoke-direct {v4}, Lcom/estrongs/android/ui/addressbar/b;-><init>()V

    const v1, 0x7f0e0454

    invoke-static {v3, v1}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v5

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bL(Ljava/lang/String;)Z

    move-result v6

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->aX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->Y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->af(Ljava/lang/String;)Z

    move-result v7

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->aa(Ljava/lang/String;)Z

    move-result v8

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->W(Ljava/lang/String;)Z

    move-result v9

    if-eqz v5, :cond_1

    if-eqz v6, :cond_2

    :cond_1
    if-nez v2, :cond_2

    if-nez v7, :cond_2

    if-nez v8, :cond_2

    if-eqz v9, :cond_5

    :cond_2
    const v6, 0x7f0800c4

    invoke-virtual {p0, v6}, Lcom/estrongs/android/ui/controller/a;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v6, Lcom/estrongs/android/ui/controller/b;

    invoke-direct {v6, p0, p2, v5, v2}, Lcom/estrongs/android/ui/controller/b;-><init>(Lcom/estrongs/android/ui/controller/a;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0148

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v4, Lcom/estrongs/android/ui/addressbar/b;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020270

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v4, Lcom/estrongs/android/ui/addressbar/b;->b:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0d015a

    iput v1, v4, Lcom/estrongs/android/ui/addressbar/b;->c:I

    const/4 v1, 0x0

    iput-boolean v1, v4, Lcom/estrongs/android/ui/addressbar/b;->d:Z

    const/4 v1, 0x0

    iput v1, v4, Lcom/estrongs/android/ui/addressbar/b;->e:I

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v4, Lcom/estrongs/android/ui/addressbar/b;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setDrawableRes(Lcom/estrongs/android/ui/addressbar/b;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setIsBroadMode(Z)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4, p1, p2, v2, v1}, Lcom/estrongs/android/ui/controller/bl;->a(Landroid/content/Context;Lcom/estrongs/android/view/cr;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setDisplayPaths([Ljava/lang/String;)V

    const v1, 0x7f0e0080

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/estrongs/android/ui/controller/e;

    invoke-direct {v4, p0, v1}, Lcom/estrongs/android/ui/controller/e;-><init>(Lcom/estrongs/android/ui/controller/a;Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Lcom/estrongs/android/ui/controller/f;

    invoke-direct {v1, p0, p1, v2}, Lcom/estrongs/android/ui/controller/f;-><init>(Lcom/estrongs/android/ui/controller/a;Lcom/estrongs/android/view/cr;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setOnAddressBarClickListener(Lcom/estrongs/android/ui/addressbar/f;)V

    new-instance v1, Lcom/estrongs/android/ui/controller/g;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/controller/g;-><init>(Lcom/estrongs/android/ui/controller/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setOnAddressBarLongClickListener(Lcom/estrongs/android/ui/addressbar/g;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->ac(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f080093

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/controller/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/estrongs/android/ui/controller/c;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/ui/controller/c;-><init>(Lcom/estrongs/android/ui/controller/a;Lcom/estrongs/android/view/cr;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_6
    invoke-static {p2}, Lcom/estrongs/android/util/ap;->aZ(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f080093

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/controller/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/estrongs/android/ui/controller/d;

    invoke-direct {v2, p0, p2}, Lcom/estrongs/android/ui/controller/d;-><init>(Lcom/estrongs/android/ui/controller/a;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_8
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_9
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/estrongs/android/view/cr;->m()V

    goto :goto_2
.end method

.method public a(Lcom/estrongs/android/view/cr;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x0

    aget-object v0, p3, v4

    const/4 v1, 0x1

    aget-object v1, p3, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_3

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v2, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/controller/a;->z()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/estrongs/android/ui/d/i;->c(I)Lcom/estrongs/android/ui/d/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/d/h;->a(Ljava/util/ArrayList;)V

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/a;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setIsScreenSwitching(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/a;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setDisplayPaths([Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/controller/a;->a(Lcom/estrongs/android/view/cr;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    if-eqz v0, :cond_4

    const-string v3, "#home_page#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f0803a9

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->i:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setCurrentPath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract a(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract a(Z)V
.end method

.method public abstract a(Landroid/view/Menu;)Z
.end method

.method public abstract a(Landroid/view/MenuItem;)Z
.end method

.method protected b(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public abstract b()V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract b(Z)V
.end method

.method public abstract b(Landroid/view/Menu;)Z
.end method

.method public abstract c()Landroid/view/View;
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->n:Lcom/estrongs/android/ui/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->n:Lcom/estrongs/android/ui/d/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/d/a;->e(I)V

    :cond_0
    return-void
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract c(Z)V
.end method

.method public abstract d()Landroid/view/View;
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->n:Lcom/estrongs/android/ui/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->n:Lcom/estrongs/android/ui/d/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/d/a;->d(I)V

    :cond_0
    return-void
.end method

.method public abstract d(Z)V
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->n:Lcom/estrongs/android/ui/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->n:Lcom/estrongs/android/ui/d/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/d/a;->c(I)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->n:Lcom/estrongs/android/ui/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->n:Lcom/estrongs/android/ui/d/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/a;->c()V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->n:Lcom/estrongs/android/ui/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->n:Lcom/estrongs/android/ui/d/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/d/a;->d(I)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/a;->l:Lcom/estrongs/android/ui/f/l;

    return-void
.end method

.method public abstract g(I)V
.end method

.method public abstract h()Landroid/view/View;
.end method

.method public abstract i()Landroid/view/View;
.end method

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method public abstract l()V
.end method

.method public abstract m()V
.end method

.method public abstract n()V
.end method

.method public abstract o()V
.end method

.method public abstract p()V
.end method

.method public abstract q()Ljava/lang/String;
.end method

.method public abstract r()Z
.end method

.method public abstract s()V
.end method

.method public abstract t()V
.end method

.method public abstract u()V
.end method

.method public abstract v()Z
.end method

.method public abstract w()Z
.end method

.method public abstract x()V
.end method

.method public abstract y()V
.end method

.method public z()Lcom/estrongs/android/ui/d/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/a;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    return-object v0
.end method
