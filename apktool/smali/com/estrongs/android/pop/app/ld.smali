.class Lcom/estrongs/android/pop/app/ld;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ShowDialogActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ld;->a:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ld;->a:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    const-class v2, Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ld;->a:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/ShowDialogActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
