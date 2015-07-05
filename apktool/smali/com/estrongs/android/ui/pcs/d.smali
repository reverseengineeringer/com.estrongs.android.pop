.class public Lcom/estrongs/android/ui/pcs/d;
.super Lcom/estrongs/android/ui/pcs/v;


# instance fields
.field private d:Landroid/view/View;

.field private e:Landroid/content/Context;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Z

.field private j:Lcom/estrongs/android/pop/ad;

.field private k:Lcom/estrongs/android/ui/pcs/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/ui/pcs/v;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/v;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/d;->i:Z

    iput-object p2, p0, Lcom/estrongs/android/ui/pcs/d;->k:Lcom/estrongs/android/ui/pcs/v;

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->j:Lcom/estrongs/android/pop/ad;

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/d;->g()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/d;->f()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/d;)Lcom/estrongs/android/ui/pcs/v;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->k:Lcom/estrongs/android/ui/pcs/v;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/d;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/pcs/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    return-object v0
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->k:Lcom/estrongs/android/ui/pcs/v;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/v;->cancel()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/d;->dismiss()V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/d;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->b:Lcom/estrongs/android/ui/pcs/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->b:Lcom/estrongs/android/ui/pcs/n;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/estrongs/android/ui/pcs/n;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/d;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    const v1, 0x7f0a031e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->f:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/pcs/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/e;-><init>(Lcom/estrongs/android/ui/pcs/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    const v1, 0x7f0a031f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->g:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/pcs/f;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/f;-><init>(Lcom/estrongs/android/ui/pcs/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0550

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/d;->setTitle(I)V

    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/d;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/pcs/g;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/g;-><init>(Lcom/estrongs/android/ui/pcs/d;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/pcs/d;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0b011b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/d;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/pcs/h;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/h;-><init>(Lcom/estrongs/android/ui/pcs/d;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/pcs/d;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    const v1, 0x7f0a0320

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/pcs/i;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/i;-><init>(Lcom/estrongs/android/ui/pcs/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/d;->i:Z

    const v0, 0x7f0b0559

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/d;->setTitle(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    const v1, 0x7f0a031d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0528

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public b()V
    .locals 4

    const v1, 0x7f0a031d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/d;->i:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->j:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->j:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->j:Lcom/estrongs/android/pop/ad;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ad;->a(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0552

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->k:Lcom/estrongs/android/ui/pcs/v;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/v;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->j:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->j:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/Button;

    const v1, 0x7f0b0369

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/Button;

    const v1, 0x7f0b0553

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0551

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/d;->f()V

    invoke-super {p0}, Lcom/estrongs/android/ui/pcs/v;->onBackPressed()V

    return-void
.end method
