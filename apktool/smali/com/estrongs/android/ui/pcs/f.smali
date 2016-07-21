.class public Lcom/estrongs/android/ui/pcs/f;
.super Lcom/estrongs/android/ui/pcs/y;


# instance fields
.field private d:Landroid/view/View;

.field private e:Landroid/content/Context;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Z

.field private j:Lcom/estrongs/android/pop/ad;

.field private k:Lcom/estrongs/android/ui/pcs/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/ui/pcs/y;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/y;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/f;->i:Z

    iput-object p2, p0, Lcom/estrongs/android/ui/pcs/f;->k:Lcom/estrongs/android/ui/pcs/y;

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/f;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->j:Lcom/estrongs/android/pop/ad;

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/f;->g()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/f;->f()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/f;)Lcom/estrongs/android/ui/pcs/y;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->k:Lcom/estrongs/android/ui/pcs/y;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/f;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/f;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/pcs/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->e:Landroid/content/Context;

    return-object v0
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->k:Lcom/estrongs/android/ui/pcs/y;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/y;->cancel()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/f;->dismiss()V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/f;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->b:Lcom/estrongs/android/ui/pcs/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->b:Lcom/estrongs/android/ui/pcs/q;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/estrongs/android/ui/pcs/q;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/f;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->d:Landroid/view/View;

    const v1, 0x7f0e057d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->f:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/pcs/g;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/g;-><init>(Lcom/estrongs/android/ui/pcs/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->d:Landroid/view/View;

    const v1, 0x7f0e057e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->g:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/pcs/h;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/h;-><init>(Lcom/estrongs/android/ui/pcs/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802dc

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/f;->setTitle(I)V

    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/f;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/pcs/i;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/i;-><init>(Lcom/estrongs/android/ui/pcs/f;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/pcs/f;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0805f4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/f;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/pcs/j;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/j;-><init>(Lcom/estrongs/android/ui/pcs/f;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/pcs/f;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->d:Landroid/view/View;

    const v1, 0x7f0e057f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->h:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/pcs/k;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/k;-><init>(Lcom/estrongs/android/ui/pcs/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/f;->i:Z

    const v0, 0x7f0802e0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/f;->setTitle(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->d:Landroid/view/View;

    const v1, 0x7f0e057c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0804ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public b()V
    .locals 4

    const v1, 0x7f0e057c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/f;->i:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->j:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->j:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->j:Lcom/estrongs/android/pop/ad;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ad;->a(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0802de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->k:Lcom/estrongs/android/ui/pcs/y;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/y;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->j:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->j:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->h:Landroid/widget/Button;

    const v1, 0x7f08008f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->h:Landroid/widget/Button;

    const v1, 0x7f0802df

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0802dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/f;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/f;->f()V

    invoke-super {p0}, Lcom/estrongs/android/ui/pcs/y;->onBackPressed()V

    return-void
.end method
