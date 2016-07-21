.class public Lcom/estrongs/android/ui/pcs/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/dialog/ci;

.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/android/ui/pcs/q;

.field private d:Landroid/content/DialogInterface$OnCancelListener;

.field private e:Lcom/estrongs/android/ui/pcs/u;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/estrongs/android/ui/pcs/w;

.field private i:Z

.field private j:Z

.field private k:Lcom/estrongs/android/pop/ad;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/pcs/c;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/ui/pcs/c;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/c;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->g:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/pcs/d;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/pcs/d;-><init>(Lcom/estrongs/android/ui/pcs/c;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->l:Landroid/os/Handler;

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/c;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/estrongs/android/ui/pcs/c;->j:Z

    iput-boolean p2, p0, Lcom/estrongs/android/ui/pcs/c;->i:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->k:Lcom/estrongs/android/pop/ad;

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->e:Lcom/estrongs/android/ui/pcs/u;

    new-instance v0, Lcom/estrongs/android/ui/pcs/w;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->h:Lcom/estrongs/android/ui/pcs/w;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->h:Lcom/estrongs/android/ui/pcs/w;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/c;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/w;->a(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/c;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/c;Lcom/estrongs/android/ui/pcs/q;)Lcom/estrongs/android/ui/pcs/q;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/c;->c:Lcom/estrongs/android/ui/pcs/q;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/c;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/c;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->k:Lcom/estrongs/android/pop/ad;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ad;->f(J)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->e:Lcom/estrongs/android/ui/pcs/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->e:Lcom/estrongs/android/ui/pcs/u;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/u;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->e:Lcom/estrongs/android/ui/pcs/u;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/pcs/u;->a(Ljava/lang/String;)V

    :cond_1
    const-string v0, "pcs_temp_mode"

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/ui/pcs/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/c;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->b:Landroid/content/Context;

    const v1, 0x7f0804b5

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->c:Lcom/estrongs/android/ui/pcs/q;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->c:Lcom/estrongs/android/ui/pcs/q;

    invoke-interface {v0, v4, v1, v1}, Lcom/estrongs/android/ui/pcs/q;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/c;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/pcs/c;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->k:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/ad;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/c;)Lcom/estrongs/android/ui/pcs/q;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->c:Lcom/estrongs/android/ui/pcs/q;

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0e0108

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0804b4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/c;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0804c0

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->a:Lcom/estrongs/android/ui/dialog/ci;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->a:Lcom/estrongs/android/ui/dialog/ci;

    new-instance v1, Lcom/estrongs/android/ui/pcs/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/e;-><init>(Lcom/estrongs/android/ui/pcs/c;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->a:Lcom/estrongs/android/ui/dialog/ci;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/ui/pcs/c;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->d:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->h:Lcom/estrongs/android/ui/pcs/w;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/w;->a()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/pcs/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/c;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/c;->d()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/c;->d:Landroid/content/DialogInterface$OnCancelListener;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ci;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/pcs/q;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/c;->c:Lcom/estrongs/android/ui/pcs/q;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->k:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ag()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->c:Lcom/estrongs/android/ui/pcs/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->c:Lcom/estrongs/android/ui/pcs/q;

    invoke-interface {v0, v1, p1, p2}, Lcom/estrongs/android/ui/pcs/q;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/ad;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/estrongs/android/pop/z;->N:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/c;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    return-void
.end method
