.class public Lcom/estrongs/android/ui/dialog/az;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/dialog/cg;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/az;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/az;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ftp"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "sftp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ftps"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "webdav"

    aput-object v2, v0, v1

    new-instance v1, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/az;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    new-instance v3, Lcom/estrongs/android/ui/dialog/ba;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/ba;-><init>(Lcom/estrongs/android/ui/dialog/az;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/dialog/ct;->d(Z)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->a:Lcom/estrongs/android/ui/dialog/cg;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->a:Lcom/estrongs/android/ui/dialog/cg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->a:Lcom/estrongs/android/ui/dialog/cg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    :cond_0
    return-void
.end method
