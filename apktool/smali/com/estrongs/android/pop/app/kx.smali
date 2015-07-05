.class Lcom/estrongs/android/pop/app/kx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/estrongs/android/pop/app/ShowDialogActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/kx;->c:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/kx;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/estrongs/android/pop/app/kx;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kx;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/kx;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/kx;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kx;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/kx;->c:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    const-class v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    const-string v2, "/"

    invoke-static {v0, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kx;->c:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/kx;->c:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->finish()V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
