.class public Lcom/estrongs/android/widget/ao;
.super Lcom/estrongs/android/ui/dialog/cg;


# instance fields
.field protected i:Lcom/estrongs/android/view/cd;

.field protected j:Landroid/app/Activity;

.field protected k:Landroid/view/View;

.field protected l:Lcom/estrongs/android/widget/au;

.field protected m:Landroid/view/View;

.field protected n:Landroid/widget/TextView;

.field protected o:Lcom/estrongs/android/view/ca;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/android/widget/au;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/estrongs/android/widget/ap;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/ap;-><init>(Lcom/estrongs/android/widget/ao;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ao;->o:Lcom/estrongs/android/view/ca;

    new-instance v0, Lcom/estrongs/android/widget/aq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/aq;-><init>(Lcom/estrongs/android/widget/ao;)V

    invoke-super {p0, v0}, Lcom/estrongs/android/ui/dialog/cg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p1, p0, Lcom/estrongs/android/widget/ao;->j:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/widget/ao;->l:Lcom/estrongs/android/widget/au;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/widget/ao;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ao;->c()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030076

    return v0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ao;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ao;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0a0252

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/estrongs/android/widget/ao;->k:Landroid/view/View;

    const v0, 0x7f0a0250

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/estrongs/android/widget/ao;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/ao;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ao;->m:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/widget/ar;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/ar;-><init>(Lcom/estrongs/android/widget/ao;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0251

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ao;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/widget/ao;->n:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method protected b()Lcom/estrongs/android/view/cd;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ao;->i:Lcom/estrongs/android/view/cd;

    return-object v0
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/ao;->i:Lcom/estrongs/android/view/cd;

    iget-object v1, p0, Lcom/estrongs/android/widget/ao;->i:Lcom/estrongs/android/view/cd;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cd;->B()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cd;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ao;->i:Lcom/estrongs/android/view/cd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cd;->b(Z)V

    return-void
.end method

.method protected c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/ao;->i:Lcom/estrongs/android/view/cd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/widget/as;

    iget-object v1, p0, Lcom/estrongs/android/widget/ao;->j:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/estrongs/android/widget/as;-><init>(Lcom/estrongs/android/widget/ao;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ao;->i:Lcom/estrongs/android/view/cd;

    iget-object v0, p0, Lcom/estrongs/android/widget/ao;->i:Lcom/estrongs/android/view/cd;

    iget-object v1, p0, Lcom/estrongs/android/widget/ao;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f080012

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cd;->j(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ao;->i:Lcom/estrongs/android/view/cd;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cd;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ao;->i:Lcom/estrongs/android/view/cd;

    new-instance v1, Lcom/estrongs/android/widget/at;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/at;-><init>(Lcom/estrongs/android/widget/ao;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cd;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ao;->k:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/estrongs/android/widget/ao;->i:Lcom/estrongs/android/view/cd;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cd;->aq()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ao;->i:Lcom/estrongs/android/view/cd;

    iget-object v1, p0, Lcom/estrongs/android/widget/ao;->o:Lcom/estrongs/android/view/ca;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cd;->a(Lcom/estrongs/android/view/ca;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ao;->i:Lcom/estrongs/android/view/cd;

    const-string v1, "gallery://local/buckets/"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cd;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/widget/ao;->i:Lcom/estrongs/android/view/cd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ao;->i:Lcom/estrongs/android/view/cd;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cd;->a_()V

    :cond_0
    return-void
.end method
