.class Lcom/estrongs/android/pop/view/dp;
.super Lcom/estrongs/android/view/aw;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/dp;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/view/aw;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/dp;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/dp;->m(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/dp;Lcom/estrongs/fs/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/dp;->b(Lcom/estrongs/fs/h;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/dp;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/dp;->m(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/estrongs/fs/h;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/fs/h;)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/dp;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/dp;->m(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 3

    const/4 v1, 0x0

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
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;->NETWORK:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dp;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->a(Landroid/content/Context;Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;)Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/dq;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/view/dq;-><init>(Lcom/estrongs/android/pop/view/dp;Lcom/estrongs/fs/h;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->a(Lcom/estrongs/android/ui/dialog/kr;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->b()V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "usb://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/estrongs/fs/impl/usb/e;->b()[Lcom/estrongs/fs/impl/usb/g;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/estrongs/fs/impl/usb/e;->a()[Lcom/estrongs/fs/impl/usb/g;

    :cond_2
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/e;->b(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/g;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dp;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b020b

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/dp;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/g;->b()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/estrongs/android/pop/view/dr;

    invoke-direct {v1, p0, v0, p1}, Lcom/estrongs/android/pop/view/dr;-><init>(Lcom/estrongs/android/pop/view/dp;Lcom/estrongs/fs/impl/usb/g;Lcom/estrongs/fs/h;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/usb/g;->a(Lcom/estrongs/fs/impl/usb/k;)V

    goto :goto_1

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

    goto :goto_1
.end method
