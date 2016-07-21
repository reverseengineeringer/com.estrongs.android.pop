.class Lcom/estrongs/android/ui/dialog/ks;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/kq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/kq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ks;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ks;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kq;->d(Lcom/estrongs/android/ui/dialog/kq;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ks;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kq;->e(Lcom/estrongs/android/ui/dialog/kq;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ks;->a:Lcom/estrongs/android/ui/dialog/kq;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/kq;->a(Lcom/estrongs/android/ui/dialog/kq;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ks;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kq;->f(Lcom/estrongs/android/ui/dialog/kq;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ks;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/kq;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ks;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kq;->d(Lcom/estrongs/android/ui/dialog/kq;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ks;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kq;->g(Lcom/estrongs/android/ui/dialog/kq;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ks;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kq;->c(Lcom/estrongs/android/ui/dialog/kq;)Lcom/estrongs/android/util/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/aa;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ks;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/kq;->b(Lcom/estrongs/android/ui/dialog/kq;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ks;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/kq;->c()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ks;->a:Lcom/estrongs/android/ui/dialog/kq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/kq;->c()V

    goto :goto_0
.end method
