.class Lcom/estrongs/android/ui/dialog/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/o;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/s;->a:Lcom/estrongs/android/ui/dialog/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/s;->a:Lcom/estrongs/android/ui/dialog/o;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/o;->a(Lcom/estrongs/android/ui/dialog/o;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "action.lock_apps"

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/s;->a:Lcom/estrongs/android/ui/dialog/o;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/b/d;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/s;->a:Lcom/estrongs/android/ui/dialog/o;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/o;->a(Lcom/estrongs/android/ui/dialog/o;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/s;->a:Lcom/estrongs/android/ui/dialog/o;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/o;->a(Lcom/estrongs/android/ui/dialog/o;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->i(Z)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
