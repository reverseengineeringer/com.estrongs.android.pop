.class Lcom/estrongs/android/ui/dialog/eq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/en;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/en;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/eq;->a:Lcom/estrongs/android/ui/dialog/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eq;->a:Lcom/estrongs/android/ui/dialog/en;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/en;->b:Landroid/app/Dialog;

    check-cast v0, Lcom/estrongs/android/ui/dialog/er;

    iget-boolean v0, v0, Lcom/estrongs/android/ui/dialog/er;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eq;->a:Lcom/estrongs/android/ui/dialog/en;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/en;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/eq;->a:Lcom/estrongs/android/ui/dialog/en;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/en;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eq;->a:Lcom/estrongs/android/ui/dialog/en;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/en;->b:Landroid/app/Dialog;

    check-cast v0, Lcom/estrongs/android/ui/dialog/er;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/er;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eq;->a:Lcom/estrongs/android/ui/dialog/en;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/en;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v2

    if-eqz v1, :cond_2

    const v0, 0x7f0d0101

    :goto_1
    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/eq;->a:Lcom/estrongs/android/ui/dialog/en;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/en;->b:Landroid/app/Dialog;

    check-cast v0, Lcom/estrongs/android/ui/dialog/er;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/er;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0d0103

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
