.class Lcom/estrongs/android/pop/view/di;
.super Lcom/estrongs/android/ui/c/a;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/di;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/ui/c/a;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/di;Lcom/estrongs/fs/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/di;->b(Lcom/estrongs/fs/h;)V

    return-void
.end method

.method private b(Lcom/estrongs/fs/h;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/fs/h;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;->NETWORK:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/di;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->a(Landroid/content/Context;Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;)Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/dj;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/view/dj;-><init>(Lcom/estrongs/android/pop/view/di;Lcom/estrongs/fs/h;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->a(Lcom/estrongs/android/ui/dialog/kr;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->b()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

    goto :goto_1
.end method
