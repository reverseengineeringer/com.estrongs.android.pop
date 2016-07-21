.class Lcom/estrongs/android/ui/dialog/lb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/lb;->a:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/lb;->a:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->c(Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
