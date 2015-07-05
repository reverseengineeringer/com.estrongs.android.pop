.class Lcom/estrongs/android/ui/view/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/b;->k(Lcom/estrongs/android/ui/view/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/b;->b(Lcom/estrongs/android/ui/view/b;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/b;->l(Lcom/estrongs/android/ui/view/b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/b;->o(Lcom/estrongs/android/ui/view/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/view/p;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/view/p;-><init>(Lcom/estrongs/android/ui/view/o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/estrongs/android/a/u;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/b;->p(Lcom/estrongs/android/ui/view/b;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/b;->k(Lcom/estrongs/android/ui/view/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    iget-object v2, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/b;->k(Lcom/estrongs/android/ui/view/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/view/b;->c(Lcom/estrongs/android/ui/view/b;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/b;->q(Lcom/estrongs/android/ui/view/b;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/b;->r(Lcom/estrongs/android/ui/view/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/b;->k(Lcom/estrongs/android/ui/view/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/estrongs/android/a/u;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/b;->w(Lcom/estrongs/android/ui/view/b;)Lcom/estrongs/android/view/eb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/b;->y(Lcom/estrongs/android/ui/view/b;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/view/q;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/view/q;-><init>(Lcom/estrongs/android/ui/view/o;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/b;->t(Lcom/estrongs/android/ui/view/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/b;->s(Lcom/estrongs/android/ui/view/b;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/b;->v(Lcom/estrongs/android/ui/view/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/b;->k(Lcom/estrongs/android/ui/view/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/b;->u(Lcom/estrongs/android/ui/view/b;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v4}, Lcom/estrongs/android/ui/view/b;->s(Lcom/estrongs/android/ui/view/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/ad;->g(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method
