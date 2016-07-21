.class Lcom/estrongs/android/ui/dialog/dn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/dl;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/dl;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/dn;->a:Lcom/estrongs/android/ui/dialog/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dn;->a:Lcom/estrongs/android/ui/dialog/dl;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/dl;->a(Lcom/estrongs/android/ui/dialog/dl;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dn;->a:Lcom/estrongs/android/ui/dialog/dl;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/dl;->b(Lcom/estrongs/android/ui/dialog/dl;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dn;->a:Lcom/estrongs/android/ui/dialog/dl;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/dl;->c(Lcom/estrongs/android/ui/dialog/dl;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0804af

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dn;->a:Lcom/estrongs/android/ui/dialog/dl;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/dl;->d(Lcom/estrongs/android/ui/dialog/dl;)Lcom/estrongs/android/ui/dialog/do;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dn;->a:Lcom/estrongs/android/ui/dialog/dl;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/dl;->d(Lcom/estrongs/android/ui/dialog/dl;)Lcom/estrongs/android/ui/dialog/do;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/dn;->a:Lcom/estrongs/android/ui/dialog/dl;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/dl;->b(Lcom/estrongs/android/ui/dialog/dl;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/do;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
