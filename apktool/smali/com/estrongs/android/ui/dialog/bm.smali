.class Lcom/estrongs/android/ui/dialog/bm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnDismissListener;

.field final synthetic b:Lcom/estrongs/android/pop/app/d/a;

.field final synthetic c:Lcom/estrongs/android/ui/dialog/bl;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bl;Landroid/content/DialogInterface$OnDismissListener;Lcom/estrongs/android/pop/app/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bm;->c:Lcom/estrongs/android/ui/dialog/bl;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/bm;->a:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/bm;->b:Lcom/estrongs/android/pop/app/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bm;->c:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bm;->c:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/bl;->a(Lcom/estrongs/android/ui/dialog/bl;Lcom/estrongs/android/j/c;)Lcom/estrongs/android/j/c;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bm;->c:Lcom/estrongs/android/ui/dialog/bl;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/bl;->a(Lcom/estrongs/android/ui/dialog/bl;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "act3"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bm;->c:Lcom/estrongs/android/ui/dialog/bl;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/bl;->a(Lcom/estrongs/android/ui/dialog/bl;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "act3"

    const-string v4, "app_remnant_folders"

    invoke-virtual {v0, v1, v4}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bm;->c:Lcom/estrongs/android/ui/dialog/bl;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/bl;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bm;->c:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    const v1, 0x7f08041e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/bm;->c:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    const v4, 0x7f08019d

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bm;->c:Lcom/estrongs/android/ui/dialog/bl;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    invoke-static {v1, v0, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bm;->a:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bm;->a:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_1
    new-instance v4, Lcom/estrongs/android/ui/dialog/bn;

    invoke-direct {v4, p0}, Lcom/estrongs/android/ui/dialog/bn;-><init>(Lcom/estrongs/android/ui/dialog/bm;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bm;->b:Lcom/estrongs/android/pop/app/d/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bm;->c:Lcom/estrongs/android/ui/dialog/bl;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/bl;->b()Ljava/util/List;

    move-result-object v1

    iget-object v5, p0, Lcom/estrongs/android/ui/dialog/bm;->c:Lcom/estrongs/android/ui/dialog/bl;

    iget-boolean v6, v5, Lcom/estrongs/android/ui/dialog/bl;->f:Z

    move v5, v2

    move v7, v3

    invoke-static/range {v0 .. v7}, Lcom/estrongs/android/pop/utils/ao;->a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;ZZLcom/estrongs/a/a/p;ZZZ)V

    goto :goto_1
.end method
