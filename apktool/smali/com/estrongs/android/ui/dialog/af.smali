.class Lcom/estrongs/android/ui/dialog/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/estrongs/fs/h;

.field final synthetic c:Lcom/estrongs/android/ui/dialog/ae;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ae;Landroid/content/Context;Lcom/estrongs/fs/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/af;->c:Lcom/estrongs/android/ui/dialog/ae;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/af;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/af;->b:Lcom/estrongs/fs/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/af;->c:Lcom/estrongs/android/ui/dialog/ae;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ae;->b:Lcom/estrongs/android/ui/dialog/am;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/am;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/af;->c:Lcom/estrongs/android/ui/dialog/ae;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ae;->b:Lcom/estrongs/android/ui/dialog/am;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/am;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/af;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/af;->b:Lcom/estrongs/fs/h;

    const/4 v4, 0x1

    new-instance v5, Lcom/estrongs/android/ui/dialog/ag;

    invoke-direct {v5, p0}, Lcom/estrongs/android/ui/dialog/ag;-><init>(Lcom/estrongs/android/ui/dialog/af;)V

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Landroid/content/Context;Lcom/estrongs/fs/h;Ljava/lang/String;ZLcom/estrongs/android/appinfo/u;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
