.class public Lcom/estrongs/android/ui/dialog/hc;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/android/ui/dialog/ct;

.field private b:Lcom/estrongs/android/pop/esclasses/ESActivity;

.field private c:Lcom/estrongs/android/ui/dialog/hn;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/estrongs/fs/b/am;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/h;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hc;->c:Lcom/estrongs/android/ui/dialog/hn;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hc;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/hc;->e:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hc;->f:Lcom/estrongs/fs/b/am;

    new-instance v0, Lcom/estrongs/android/ui/dialog/hn;

    invoke-direct {v0, p1, p2}, Lcom/estrongs/android/ui/dialog/hn;-><init>(Landroid/content/Context;Lcom/estrongs/fs/h;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->c:Lcom/estrongs/android/ui/dialog/hn;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hc;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hc;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b00f9

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->a:Lcom/estrongs/android/ui/dialog/ct;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/h;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hc;->c:Lcom/estrongs/android/ui/dialog/hn;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hc;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/hc;->e:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hc;->f:Lcom/estrongs/fs/b/am;

    new-instance v1, Lcom/estrongs/android/ui/dialog/hn;

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0, p2, p3}, Lcom/estrongs/android/ui/dialog/hn;-><init>(Landroid/content/Context;Lcom/estrongs/fs/h;Z)V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hc;->c:Lcom/estrongs/android/ui/dialog/hn;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hc;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iput-boolean p3, p0, Lcom/estrongs/android/ui/dialog/hc;->e:Z

    new-instance v1, Lcom/estrongs/android/ui/dialog/ct;

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b00f9

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->a:Lcom/estrongs/android/ui/dialog/ct;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    goto :goto_1
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hc;->c:Lcom/estrongs/android/ui/dialog/hn;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hc;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/hc;->e:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hc;->f:Lcom/estrongs/fs/b/am;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hc;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hc;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b00f9

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->a:Lcom/estrongs/android/ui/dialog/ct;

    invoke-static {p2}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

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

    const v0, 0x7f0b03ce

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/estrongs/android/ui/dialog/hn;

    invoke-direct {v1, p1, v0}, Lcom/estrongs/android/ui/dialog/hn;-><init>(Landroid/content/Context;Lcom/estrongs/fs/h;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/hc;->c:Lcom/estrongs/android/ui/dialog/hn;

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/hc;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/hc;Lcom/estrongs/android/ui/dialog/hn;)Lcom/estrongs/android/ui/dialog/hn;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hc;->c:Lcom/estrongs/android/ui/dialog/hn;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/hc;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/hc;)Lcom/estrongs/android/pop/esclasses/ESActivity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/hc;)Lcom/estrongs/android/ui/dialog/hn;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->c:Lcom/estrongs/android/ui/dialog/hn;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->c:Lcom/estrongs/android/ui/dialog/hn;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/hc;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300be

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a001e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b0072

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->a:Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->a:Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/ui/dialog/hd;

    const-string v3, "Getting FileObject"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/estrongs/android/ui/dialog/hd;-><init>(Lcom/estrongs/android/ui/dialog/hc;Ljava/lang/String;Lcom/estrongs/android/ui/dialog/cg;Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/estrongs/android/util/m;->start()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hc;->a:Lcom/estrongs/android/ui/dialog/ct;

    const v3, 0x7f0b000c

    new-instance v4, Lcom/estrongs/android/ui/dialog/hg;

    invoke-direct {v4, p0, v2}, Lcom/estrongs/android/ui/dialog/hg;-><init>(Lcom/estrongs/android/ui/dialog/hc;Lcom/estrongs/android/util/m;)V

    invoke-virtual {v1, v3, v4}, Lcom/estrongs/android/ui/dialog/ct;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    iget-boolean v1, p0, Lcom/estrongs/android/ui/dialog/hc;->e:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :cond_2
    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/fs/b/am;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hc;->f:Lcom/estrongs/fs/b/am;

    return-void
.end method

.method public b()V
    .locals 4

    const v3, 0x7f0b000c

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->c:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hc;->f:Lcom/estrongs/fs/b/am;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/hn;->a(Lcom/estrongs/fs/b/am;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->c:Lcom/estrongs/android/ui/dialog/hn;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/hn;->aq()Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hc;->c:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hn;->c:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->c:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->c:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bW(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hc;->a:Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->a:Lcom/estrongs/android/ui/dialog/ct;

    new-instance v1, Lcom/estrongs/android/ui/dialog/hh;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/hh;-><init>(Lcom/estrongs/android/ui/dialog/hc;)V

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->a:Lcom/estrongs/android/ui/dialog/ct;

    new-instance v1, Lcom/estrongs/android/ui/dialog/hm;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/hm;-><init>(Lcom/estrongs/android/ui/dialog/hc;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/ct;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->a:Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hc;->c:Lcom/estrongs/android/ui/dialog/hn;

    iput-object v0, v1, Lcom/estrongs/android/ui/dialog/hn;->j:Landroid/app/Dialog;

    iget-boolean v1, p0, Lcom/estrongs/android/ui/dialog/hc;->e:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :cond_1
    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->a:Lcom/estrongs/android/ui/dialog/ct;

    new-instance v1, Lcom/estrongs/android/ui/dialog/hi;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/hi;-><init>(Lcom/estrongs/android/ui/dialog/hc;)V

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hc;->a:Lcom/estrongs/android/ui/dialog/ct;

    const v1, 0x7f0b0034

    new-instance v2, Lcom/estrongs/android/ui/dialog/hj;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/hj;-><init>(Lcom/estrongs/android/ui/dialog/hc;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    goto :goto_0
.end method
