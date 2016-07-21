.class public Lcom/estrongs/android/widget/ap;
.super Lcom/estrongs/android/ui/dialog/ci;


# instance fields
.field protected e:Lcom/estrongs/android/view/eb;

.field protected f:Landroid/app/Activity;

.field protected g:Landroid/view/View;

.field protected h:Lcom/estrongs/android/widget/av;

.field protected i:Landroid/view/View;

.field protected j:Landroid/widget/TextView;

.field protected k:Lcom/estrongs/android/view/dv;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/android/widget/av;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/estrongs/android/widget/aq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/aq;-><init>(Lcom/estrongs/android/widget/ap;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ap;->k:Lcom/estrongs/android/view/dv;

    new-instance v0, Lcom/estrongs/android/widget/ar;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/ar;-><init>(Lcom/estrongs/android/widget/ap;)V

    invoke-super {p0, v0}, Lcom/estrongs/android/ui/dialog/ci;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p1, p0, Lcom/estrongs/android/widget/ap;->f:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/widget/ap;->h:Lcom/estrongs/android/widget/av;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/widget/ap;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ap;->c()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f0300e5

    return v0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ap;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ap;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0e0425

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/estrongs/android/widget/ap;->g:Landroid/view/View;

    const v0, 0x7f0e0423

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/estrongs/android/widget/ap;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->i:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/widget/as;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/as;-><init>(Lcom/estrongs/android/widget/ap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0424

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/widget/ap;->j:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method protected b()Lcom/estrongs/android/view/eb;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/view/eb;

    return-object v0
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/view/eb;

    iget-object v1, p0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/view/eb;

    invoke-virtual {v1}, Lcom/estrongs/android/view/eb;->P()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/view/eb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->b(Z)V

    return-void
.end method

.method protected c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/view/eb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/widget/at;

    iget-object v1, p0, Lcom/estrongs/android/widget/ap;->f:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/estrongs/android/widget/at;-><init>(Lcom/estrongs/android/widget/ap;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/view/eb;

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/view/eb;

    iget-object v1, p0, Lcom/estrongs/android/widget/ap;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d0105

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->i(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/view/eb;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/view/eb;

    new-instance v1, Lcom/estrongs/android/widget/au;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/au;-><init>(Lcom/estrongs/android/widget/ap;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->a(Lcom/estrongs/android/view/co;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->g:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/view/eb;

    invoke-virtual {v1}, Lcom/estrongs/android/view/eb;->aE()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/view/eb;

    iget-object v1, p0, Lcom/estrongs/android/widget/ap;->k:Lcom/estrongs/android/view/dv;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->a(Lcom/estrongs/android/view/dv;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/view/eb;

    const-string v1, "gallery://local/buckets/"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->j(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/view/eb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/view/eb;

    invoke-virtual {v0}, Lcom/estrongs/android/view/eb;->i_()V

    :cond_0
    return-void
.end method
