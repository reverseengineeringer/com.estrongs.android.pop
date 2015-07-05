.class Lcom/estrongs/android/ui/dialog/ko;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ko;->b:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ko;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ko;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ko;->b:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->a(Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->G()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ko;->b:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->a(Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0239

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ko;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ko;->b:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->b(Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;)Lcom/estrongs/android/ui/dialog/kr;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ko;->b:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->b(Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;)Lcom/estrongs/android/ui/dialog/kr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/estrongs/android/ui/dialog/kr;->a(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/FexApplication;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ko;->b:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->b(Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;)Lcom/estrongs/android/ui/dialog/kr;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ko;->b:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->b(Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;)Lcom/estrongs/android/ui/dialog/kr;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/estrongs/android/ui/dialog/kr;->a(Z)V

    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
