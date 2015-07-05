.class Lcom/estrongs/android/ui/dialog/jp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ix;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ix;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jp;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const v2, 0x7f0b02aa

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jp;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ix;->a(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->canPause()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jp;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ix;->a(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->requsestPause()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jp;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ix;->a(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->canHide()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jp;->a:Lcom/estrongs/android/ui/dialog/ix;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jp;->a:Lcom/estrongs/android/ui/dialog/ix;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jp;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/ix;->b(Lcom/estrongs/android/ui/dialog/ix;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ix;->setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jp;->a:Lcom/estrongs/android/ui/dialog/ix;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jp;->a:Lcom/estrongs/android/ui/dialog/ix;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jp;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/ix;->b(Lcom/estrongs/android/ui/dialog/ix;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ix;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_0
.end method
