.class Lcom/estrongs/android/widget/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/h;

.field final synthetic b:Lcom/estrongs/android/widget/q;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/q;Lcom/estrongs/fs/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/r;->b:Lcom/estrongs/android/widget/q;

    iput-object p2, p0, Lcom/estrongs/android/widget/r;->a:Lcom/estrongs/fs/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/r;->b:Lcom/estrongs/android/widget/q;

    iget-object v0, v0, Lcom/estrongs/android/widget/q;->b:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;->NETWORK:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->a(Landroid/content/Context;Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;)Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/widget/s;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/s;-><init>(Lcom/estrongs/android/widget/r;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->a(Lcom/estrongs/android/ui/dialog/lc;)V

    new-instance v1, Lcom/estrongs/android/widget/t;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/t;-><init>(Lcom/estrongs/android/widget/r;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->b()V

    return-void
.end method
