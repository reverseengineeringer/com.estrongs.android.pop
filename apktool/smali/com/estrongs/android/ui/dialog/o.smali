.class public Lcom/estrongs/android/ui/dialog/o;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/estrongs/fs/impl/b/c;

.field private b:Lcom/estrongs/android/ui/dialog/t;

.field private c:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/fs/impl/b/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/o;->b:Lcom/estrongs/android/ui/dialog/t;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/c;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/o;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/c;

    new-instance v0, Lcom/estrongs/android/ui/dialog/t;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/dialog/t;-><init>(Lcom/estrongs/android/ui/dialog/o;Lcom/estrongs/android/pop/esclasses/ESActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/o;->b:Lcom/estrongs/android/ui/dialog/t;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/o;)Lcom/estrongs/android/pop/view/FileExplorerActivity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/o;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/o;->b:Lcom/estrongs/android/ui/dialog/t;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/t;->aq()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00f9

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0510

    new-instance v2, Lcom/estrongs/android/ui/dialog/p;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/p;-><init>(Lcom/estrongs/android/ui/dialog/o;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    :goto_0
    const v0, 0x7f0b0118

    new-instance v2, Lcom/estrongs/android/ui/dialog/r;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/r;-><init>(Lcom/estrongs/android/ui/dialog/o;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    const v0, 0x7f0b000c

    new-instance v2, Lcom/estrongs/android/ui/dialog/s;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/s;-><init>(Lcom/estrongs/android/ui/dialog/o;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    return-void

    :cond_0
    const v0, 0x7f0b0028

    new-instance v2, Lcom/estrongs/android/ui/dialog/q;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/q;-><init>(Lcom/estrongs/android/ui/dialog/o;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    goto :goto_0
.end method
