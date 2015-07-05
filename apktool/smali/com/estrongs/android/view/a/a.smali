.class public Lcom/estrongs/android/view/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field public static final b:Lcom/estrongs/android/view/a/c;


# instance fields
.field a:Lcom/estrongs/android/view/a/c;

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Ljava/lang/CharSequence;

.field private h:Landroid/content/Intent;

.field private i:Z

.field private j:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private k:Lcom/estrongs/android/view/a/e;

.field private l:Lcom/estrongs/android/view/a/b;

.field private m:Landroid/view/View;

.field private n:Z

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/view/a/d;

    invoke-direct {v0}, Lcom/estrongs/android/view/a/d;-><init>()V

    sput-object v0, Lcom/estrongs/android/view/a/a;->b:Lcom/estrongs/android/view/a/c;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/16 v1, 0xe8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/a/a;->n:Z

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/view/a/a;->o:I

    sget-object v0, Lcom/estrongs/android/view/a/a;->b:Lcom/estrongs/android/view/a/c;

    iput-object v0, p0, Lcom/estrongs/android/view/a/a;->a:Lcom/estrongs/android/view/a/c;

    iput p1, p0, Lcom/estrongs/android/view/a/a;->d:I

    iput p2, p0, Lcom/estrongs/android/view/a/a;->e:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const/16 v1, 0xe8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/a/a;->n:Z

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/view/a/a;->o:I

    sget-object v0, Lcom/estrongs/android/view/a/a;->b:Lcom/estrongs/android/view/a/c;

    iput-object v0, p0, Lcom/estrongs/android/view/a/a;->a:Lcom/estrongs/android/view/a/c;

    iput p1, p0, Lcom/estrongs/android/view/a/a;->d:I

    iput-object p2, p0, Lcom/estrongs/android/view/a/a;->g:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0xe8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/a/a;->n:Z

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/view/a/a;->o:I

    sget-object v0, Lcom/estrongs/android/view/a/a;->b:Lcom/estrongs/android/view/a/c;

    iput-object v0, p0, Lcom/estrongs/android/view/a/a;->a:Lcom/estrongs/android/view/a/c;

    iput-object p1, p0, Lcom/estrongs/android/view/a/a;->f:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    iput-object p2, p0, Lcom/estrongs/android/view/a/a;->g:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/a/a;->e:I

    return v0
.end method

.method public a(C)Lcom/estrongs/android/view/a/a;
    .locals 0

    return-object p0
.end method

.method public a(CC)Lcom/estrongs/android/view/a/a;
    .locals 0

    return-object p0
.end method

.method public a(I)Lcom/estrongs/android/view/a/a;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method is abandoned ! "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/content/Intent;)Lcom/estrongs/android/view/a/a;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/a/a;->h:Landroid/content/Intent;

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/estrongs/android/view/a/a;
    .locals 5

    iput-object p1, p0, Lcom/estrongs/android/view/a/a;->f:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->m:Landroid/view/View;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->m:Landroid/view/View;

    const v1, 0x7f0a02a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/view/a/a;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->as()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/view/a/a;->f:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/view/a/a;->f:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/a/a;->j:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public a(Lcom/estrongs/android/view/a/b;)Lcom/estrongs/android/view/a/a;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/a/a;->l:Lcom/estrongs/android/view/a/b;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/estrongs/android/view/a/a;
    .locals 3

    iput-object p1, p0, Lcom/estrongs/android/view/a/a;->g:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->as()Z

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->m:Landroid/view/View;

    const v2, 0x7f0a02a8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/view/a/a;->g:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/estrongs/android/view/a/a;->o:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/estrongs/android/view/a/a;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    :goto_1
    return-object p0

    :cond_1
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Z)Lcom/estrongs/android/view/a/a;
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/a/a;->i:Z

    return-object p0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/view/a/a;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/a/a;->m:Landroid/view/View;

    iget-boolean v0, p0, Lcom/estrongs/android/view/a/a;->n:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/view/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/a/a;->k:Lcom/estrongs/android/view/a/e;

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/e/co;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->l:Lcom/estrongs/android/view/a/b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->l:Lcom/estrongs/android/view/a/b;

    invoke-interface {v0, p1}, Lcom/estrongs/android/view/a/b;->a(Lcom/estrongs/android/ui/e/co;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/a/a;->d:I

    return v0
.end method

.method public b(C)Lcom/estrongs/android/view/a/a;
    .locals 0

    return-object p0
.end method

.method public b(I)Lcom/estrongs/android/view/a/a;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method is abandoned ! "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/estrongs/android/view/a/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Z)Lcom/estrongs/android/view/a/a;
    .locals 0

    return-object p0
.end method

.method public c()Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->j:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method public c(I)Lcom/estrongs/android/view/a/a;
    .locals 3

    iput p1, p0, Lcom/estrongs/android/view/a/a;->o:I

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->m:Landroid/view/View;

    const v1, 0x7f0a02a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/estrongs/android/view/a/a;->o:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/estrongs/android/view/a/a;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c(Z)Lcom/estrongs/android/view/a/a;
    .locals 2

    iput-boolean p1, p0, Lcom/estrongs/android/view/a/a;->n:Z

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/a/a;->m:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object p0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public collapseActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Z)Lcom/estrongs/android/view/a/a;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->m:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->f:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->m:Landroid/view/View;

    const v1, 0x7f0a02a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/estrongs/android/view/a/a;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/4 v1, 0x1

    const v2, -0x777778

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v1, p0, Lcom/estrongs/android/view/a/a;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/a/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->m:Landroid/view/View;

    const v1, 0x7f0a02a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d()Lcom/estrongs/android/view/a/e;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->k:Lcom/estrongs/android/view/a/e;

    return-object v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->k:Lcom/estrongs/android/view/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->k:Lcom/estrongs/android/view/a/e;

    invoke-interface {v0, p0}, Lcom/estrongs/android/view/a/e;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_0
    return-void
.end method

.method public expandActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->j:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->j:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method

.method public g()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->m:Landroid/view/View;

    return-object v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->h:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/a/a;->c:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->g:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/a/a;->i:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/a/a;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/a/a;->n:Z

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/a/a;->b(C)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/a/a;->a(Z)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/a/a;->b(Z)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setIcon(I)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/a/a;->b(I)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/a/a;->a(Landroid/graphics/drawable/Drawable;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/a/a;->a(Landroid/content/Intent;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/a/a;->a(C)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setShortcut(CC)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/view/a/a;->a(CC)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public setShowAsAction(I)V
    .locals 0

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic setTitle(I)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/a/a;->a(I)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/a/a;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/a/a;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/a/a;->c(Z)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    return-object v0
.end method
