.class public Lcom/estrongs/android/widget/aj;
.super Lcom/estrongs/android/widget/ap;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Z

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field private l:Lcom/estrongs/android/view/eb;

.field private m:Landroid/view/View;

.field private n:Lcom/estrongs/android/widget/RealViewSwitcher;

.field private o:Landroid/view/View;

.field private p:Z

.field private q:Lcom/estrongs/android/ui/navigation/TabIndicatorView;

.field private r:Lcom/estrongs/android/view/co;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/android/widget/av;Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/widget/ap;-><init>(Landroid/app/Activity;Lcom/estrongs/android/widget/av;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/aj;->a:Ljava/util/List;

    iput-boolean v3, p0, Lcom/estrongs/android/widget/aj;->p:Z

    new-instance v0, Lcom/estrongs/android/widget/al;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/al;-><init>(Lcom/estrongs/android/widget/aj;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/aj;->r:Lcom/estrongs/android/view/co;

    iput-boolean p3, p0, Lcom/estrongs/android/widget/aj;->p:Z

    const v0, 0x7f0e0439

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/aj;->o:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/widget/aj;->themeManager:Lcom/estrongs/android/ui/theme/at;

    const v2, 0x7f020155

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/widget/aj;->d()V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->e:Lcom/estrongs/android/view/eb;

    iget-object v1, p0, Lcom/estrongs/android/widget/aj;->r:Lcom/estrongs/android/view/co;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->a(Lcom/estrongs/android/view/co;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->e:Lcom/estrongs/android/view/eb;

    invoke-virtual {v0}, Lcom/estrongs/android/view/eb;->aA()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f080221

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/aj;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/aj;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->o:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->n:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/widget/RealViewSwitcher;->removeViewAt(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/widget/aj;)Lcom/estrongs/android/ui/navigation/TabIndicatorView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->q:Lcom/estrongs/android/ui/navigation/TabIndicatorView;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/widget/aj;)Lcom/estrongs/android/widget/RealViewSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->n:Lcom/estrongs/android/widget/RealViewSwitcher;

    return-object v0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->l:Lcom/estrongs/android/view/eb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/widget/ak;

    iget-object v1, p0, Lcom/estrongs/android/widget/aj;->f:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/estrongs/android/widget/ak;-><init>(Lcom/estrongs/android/widget/aj;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/aj;->l:Lcom/estrongs/android/view/eb;

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->m:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/estrongs/android/widget/aj;->l:Lcom/estrongs/android/view/eb;

    invoke-virtual {v1}, Lcom/estrongs/android/view/eb;->aE()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->l:Lcom/estrongs/android/view/eb;

    iget-object v1, p0, Lcom/estrongs/android/widget/aj;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d0105

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->i(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->l:Lcom/estrongs/android/view/eb;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->l:Lcom/estrongs/android/view/eb;

    iget-object v1, p0, Lcom/estrongs/android/widget/aj;->r:Lcom/estrongs/android/view/co;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->a(Lcom/estrongs/android/view/co;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->l:Lcom/estrongs/android/view/eb;

    iget-object v1, p0, Lcom/estrongs/android/widget/aj;->k:Lcom/estrongs/android/view/dv;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->a(Lcom/estrongs/android/view/dv;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->l:Lcom/estrongs/android/view/eb;

    const-string v1, "SP://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->l:Lcom/estrongs/android/view/eb;

    invoke-virtual {v0}, Lcom/estrongs/android/view/eb;->aA()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    const v0, 0x7f0e043a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/aj;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->c:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/widget/an;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/an;-><init>(Lcom/estrongs/android/widget/aj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private f()V
    .locals 2

    const v0, 0x7f0e043b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/aj;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->d:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/widget/ao;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/ao;-><init>(Lcom/estrongs/android/widget/aj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f0300e9

    return v0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/widget/ap;->a(Landroid/content/Context;)V

    const v0, 0x7f0e043e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/estrongs/android/widget/aj;->m:Landroid/view/View;

    const v0, 0x7f0e043d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/RealViewSwitcher;

    iput-object v0, p0, Lcom/estrongs/android/widget/aj;->n:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->n:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(Z)V

    const v0, 0x7f0e043c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/aj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;

    iput-object v0, p0, Lcom/estrongs/android/widget/aj;->q:Lcom/estrongs/android/ui/navigation/TabIndicatorView;

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->n:Lcom/estrongs/android/widget/RealViewSwitcher;

    new-instance v1, Lcom/estrongs/android/widget/am;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/am;-><init>(Lcom/estrongs/android/widget/aj;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->setOnScreenSwitchListener(Lcom/estrongs/android/widget/bd;)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/aj;->e()V

    invoke-direct {p0}, Lcom/estrongs/android/widget/aj;->f()V

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->q:Lcom/estrongs/android/ui/navigation/TabIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->a(IF)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/aj;->b:Z

    return-void
.end method

.method protected b()Lcom/estrongs/android/view/eb;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->n:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getCurrentScreen()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->e:Lcom/estrongs/android/view/eb;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->l:Lcom/estrongs/android/view/eb;

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/widget/ap;->b(Z)V

    iget-boolean v0, p0, Lcom/estrongs/android/widget/aj;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->l:Lcom/estrongs/android/view/eb;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->l:Lcom/estrongs/android/view/eb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->b(Z)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/widget/ap;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->l:Lcom/estrongs/android/view/eb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->l:Lcom/estrongs/android/view/eb;

    invoke-virtual {v0}, Lcom/estrongs/android/view/eb;->i_()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/widget/ap;->show()V

    iget-boolean v0, p0, Lcom/estrongs/android/widget/aj;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->e:Lcom/estrongs/android/view/eb;

    invoke-virtual {v0}, Lcom/estrongs/android/view/eb;->g()V

    iget-boolean v0, p0, Lcom/estrongs/android/widget/aj;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->l:Lcom/estrongs/android/view/eb;

    invoke-virtual {v0}, Lcom/estrongs/android/view/eb;->g()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/aj;->b:Z

    :cond_1
    return-void
.end method
