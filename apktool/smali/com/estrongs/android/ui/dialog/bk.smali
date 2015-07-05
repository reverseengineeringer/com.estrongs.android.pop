.class Lcom/estrongs/android/ui/dialog/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/esclasses/ESActivity;

.field final synthetic b:Landroid/content/DialogInterface$OnDismissListener;

.field final synthetic c:Lcom/estrongs/android/ui/dialog/bj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bj;Lcom/estrongs/android/pop/esclasses/ESActivity;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bk;->c:Lcom/estrongs/android/ui/dialog/bj;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/bk;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/bk;->b:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bk;->c:Lcom/estrongs/android/ui/dialog/bj;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/bj;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bk;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    const v1, 0x7f0b0278

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/bk;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    const v4, 0x7f0b0063

    invoke-virtual {v2, v4}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bk;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-static {v1, v0, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bk;->b:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bk;->b:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_1
    new-instance v4, Lcom/estrongs/android/ui/dialog/bl;

    invoke-direct {v4, p0}, Lcom/estrongs/android/ui/dialog/bl;-><init>(Lcom/estrongs/android/ui/dialog/bk;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bk;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bk;->c:Lcom/estrongs/android/ui/dialog/bj;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/bj;->b()Ljava/util/List;

    move-result-object v1

    iget-object v5, p0, Lcom/estrongs/android/ui/dialog/bk;->c:Lcom/estrongs/android/ui/dialog/bj;

    iget-boolean v6, v5, Lcom/estrongs/android/ui/dialog/bj;->f:Z

    move v5, v2

    move v7, v3

    invoke-static/range {v0 .. v7}, Lcom/estrongs/android/pop/utils/aj;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;ZZLcom/estrongs/a/a/p;ZZZ)V

    goto :goto_0
.end method
