.class Lcom/estrongs/android/ui/dialog/kp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kp;->a:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
