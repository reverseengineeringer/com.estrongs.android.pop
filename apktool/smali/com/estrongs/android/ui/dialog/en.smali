.class Lcom/estrongs/android/ui/dialog/en;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ek;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ek;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/en;->a:Lcom/estrongs/android/ui/dialog/ek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->a:Lcom/estrongs/android/ui/dialog/ek;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ek;->b:Landroid/app/Dialog;

    check-cast v0, Lcom/estrongs/android/ui/dialog/eo;

    iget-boolean v0, v0, Lcom/estrongs/android/ui/dialog/eo;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->a:Lcom/estrongs/android/ui/dialog/ek;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ek;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/en;->a:Lcom/estrongs/android/ui/dialog/ek;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/ek;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->a:Lcom/estrongs/android/ui/dialog/ek;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ek;->b:Landroid/app/Dialog;

    check-cast v0, Lcom/estrongs/android/ui/dialog/eo;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/eo;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->a:Lcom/estrongs/android/ui/dialog/ek;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ek;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v2

    if-eqz v1, :cond_2

    const v0, 0x7f080013

    :goto_1
    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/en;->a:Lcom/estrongs/android/ui/dialog/ek;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ek;->b:Landroid/app/Dialog;

    check-cast v0, Lcom/estrongs/android/ui/dialog/eo;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/eo;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_2
    const v0, 0x7f080014

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
