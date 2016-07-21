.class public Lcom/estrongs/android/ui/dialog/hf;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/android/ui/dialog/cv;

.field private b:Landroid/app/Activity;

.field private c:Lcom/estrongs/android/ui/dialog/hq;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/estrongs/fs/b/ao;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Landroid/content/DialogInterface$OnClickListener;

.field private l:Landroid/content/DialogInterface$OnClickListener;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/h;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hf;->c:Lcom/estrongs/android/ui/dialog/hq;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hf;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/hf;->e:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hf;->f:Lcom/estrongs/fs/b/ao;

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/hf;->g:Z

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/hf;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/hf;->m:Z

    new-instance v0, Lcom/estrongs/android/ui/dialog/hq;

    invoke-direct {v0, p1, p2}, Lcom/estrongs/android/ui/dialog/hq;-><init>(Landroid/content/Context;Lcom/estrongs/fs/h;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->c:Lcom/estrongs/android/ui/dialog/hq;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hf;->b:Landroid/app/Activity;

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hf;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0805db

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->a:Lcom/estrongs/android/ui/dialog/cv;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/h;Z)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hf;->c:Lcom/estrongs/android/ui/dialog/hq;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hf;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/hf;->e:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hf;->f:Lcom/estrongs/fs/b/ao;

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/hf;->g:Z

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/hf;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/hf;->m:Z

    new-instance v1, Lcom/estrongs/android/ui/dialog/hq;

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0, p2, p3}, Lcom/estrongs/android/ui/dialog/hq;-><init>(Landroid/content/Context;Lcom/estrongs/fs/h;Z)V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hf;->c:Lcom/estrongs/android/ui/dialog/hq;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hf;->b:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/estrongs/android/ui/dialog/hf;->e:Z

    new-instance v1, Lcom/estrongs/android/ui/dialog/cv;

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0805db

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->a:Lcom/estrongs/android/ui/dialog/cv;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->b:Landroid/app/Activity;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->b:Landroid/app/Activity;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hf;->c:Lcom/estrongs/android/ui/dialog/hq;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hf;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/hf;->e:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hf;->f:Lcom/estrongs/fs/b/ao;

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/hf;->g:Z

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/hf;->h:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/dialog/hf;->m:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hf;->b:Landroid/app/Activity;

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hf;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0805db

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->a:Lcom/estrongs/android/ui/dialog/cv;

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/fs/a/b;->h(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f080066

    invoke-static {p1, v0, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/estrongs/android/ui/dialog/hq;

    invoke-direct {v1, p1, v0, p3}, Lcom/estrongs/android/ui/dialog/hq;-><init>(Landroid/content/Context;Lcom/estrongs/fs/h;Z)V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hf;->c:Lcom/estrongs/android/ui/dialog/hq;

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/hf;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/hf;Lcom/estrongs/android/ui/dialog/hq;)Lcom/estrongs/android/ui/dialog/hq;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hf;->c:Lcom/estrongs/android/ui/dialog/hq;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/hf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/hf;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/hf;)Lcom/estrongs/android/ui/dialog/hq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->c:Lcom/estrongs/android/ui/dialog/hq;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->c:Lcom/estrongs/android/ui/dialog/hq;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/hf;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030162

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e0108

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0805b6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->a:Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->a:Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/ui/dialog/hg;

    const-string v3, "Getting FileObject"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/estrongs/android/ui/dialog/hg;-><init>(Lcom/estrongs/android/ui/dialog/hf;Ljava/lang/String;Lcom/estrongs/android/ui/dialog/ci;Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/estrongs/android/util/m;->start()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hf;->a:Lcom/estrongs/android/ui/dialog/cv;

    const v3, 0x7f080221

    new-instance v4, Lcom/estrongs/android/ui/dialog/hj;

    invoke-direct {v4, p0, v2}, Lcom/estrongs/android/ui/dialog/hj;-><init>(Lcom/estrongs/android/ui/dialog/hf;Lcom/estrongs/android/util/m;)V

    invoke-virtual {v1, v3, v4}, Lcom/estrongs/android/ui/dialog/cv;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    iget-boolean v1, p0, Lcom/estrongs/android/ui/dialog/hf;->e:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :cond_2
    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    goto :goto_0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/dialog/hf;->i:I

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/hf;->k:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public a(Lcom/estrongs/fs/b/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hf;->f:Lcom/estrongs/fs/b/ao;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/hf;->g:Z

    return-void
.end method

.method public b()V
    .locals 4

    const v3, 0x7f080221

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->c:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hf;->f:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/hq;->a(Lcom/estrongs/fs/b/ao;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->c:Lcom/estrongs/android/ui/dialog/hq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/hq;->aE()Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/hf;->m:Z

    if-nez v0, :cond_0

    const v0, 0x7f0e0392

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hf;->c:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->c:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->cp(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hf;->a:Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/hf;->g:Z

    if-eqz v0, :cond_7

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/hf;->h:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/estrongs/android/ui/dialog/hf;->j:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->a:Lcom/estrongs/android/ui/dialog/cv;

    iget v1, p0, Lcom/estrongs/android/ui/dialog/hf;->j:I

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hf;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    :cond_3
    iget v0, p0, Lcom/estrongs/android/ui/dialog/hf;->i:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->a:Lcom/estrongs/android/ui/dialog/cv;

    iget v1, p0, Lcom/estrongs/android/ui/dialog/hf;->i:I

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hf;->k:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->a:Lcom/estrongs/android/ui/dialog/cv;

    new-instance v1, Lcom/estrongs/android/ui/dialog/hp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/hp;-><init>(Lcom/estrongs/android/ui/dialog/hf;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/cv;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->a:Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hf;->c:Lcom/estrongs/android/ui/dialog/hq;

    iput-object v0, v1, Lcom/estrongs/android/ui/dialog/hq;->j:Landroid/app/Dialog;

    iget-boolean v1, p0, Lcom/estrongs/android/ui/dialog/hf;->e:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :cond_5
    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->a:Lcom/estrongs/android/ui/dialog/cv;

    new-instance v1, Lcom/estrongs/android/ui/dialog/hk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/hk;-><init>(Lcom/estrongs/android/ui/dialog/hf;)V

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->a:Lcom/estrongs/android/ui/dialog/cv;

    new-instance v1, Lcom/estrongs/android/ui/dialog/hl;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/hl;-><init>(Lcom/estrongs/android/ui/dialog/hf;)V

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hf;->a:Lcom/estrongs/android/ui/dialog/cv;

    const v1, 0x7f0800a2

    new-instance v2, Lcom/estrongs/android/ui/dialog/hm;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/hm;-><init>(Lcom/estrongs/android/ui/dialog/hf;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    goto :goto_0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/dialog/hf;->j:I

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/hf;->l:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/hf;->h:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/hf;->m:Z

    return-void
.end method
