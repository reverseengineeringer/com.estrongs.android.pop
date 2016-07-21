.class Lcom/estrongs/android/ui/dialog/ey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/ev;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ev;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Lcom/estrongs/android/ui/dialog/ev;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ey;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Lcom/estrongs/android/ui/dialog/ev;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ey;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/ev;->a(Lcom/estrongs/android/ui/dialog/ev;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Lcom/estrongs/android/ui/dialog/ev;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ev;->b(Lcom/estrongs/android/ui/dialog/ev;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ez;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ez;-><init>(Lcom/estrongs/android/ui/dialog/ey;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/estrongs/android/d/u;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Lcom/estrongs/android/ui/dialog/ev;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ev;->c(Lcom/estrongs/android/ui/dialog/ev;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ey;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Lcom/estrongs/android/ui/dialog/ev;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ev;->d(Lcom/estrongs/android/ui/dialog/ev;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Lcom/estrongs/android/ui/dialog/ev;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ev;->b(Lcom/estrongs/android/ui/dialog/ev;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ey;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/estrongs/android/d/u;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Lcom/estrongs/android/ui/dialog/ev;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ev;->b(Lcom/estrongs/android/ui/dialog/ev;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/ui/dialog/fa;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/fa;-><init>(Lcom/estrongs/android/ui/dialog/ey;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Lcom/estrongs/android/ui/dialog/ev;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ev;->b(Lcom/estrongs/android/ui/dialog/ev;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Lcom/estrongs/android/ui/dialog/ev;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/ev;->e(Lcom/estrongs/android/ui/dialog/ev;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Lcom/estrongs/android/ui/dialog/ev;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/ev;->b(Lcom/estrongs/android/ui/dialog/ev;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Lcom/estrongs/android/ui/dialog/ev;

    invoke-static {v3}, Lcom/estrongs/android/ui/dialog/ev;->e(Lcom/estrongs/android/ui/dialog/ev;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/ad;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Lcom/estrongs/android/ui/dialog/ev;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/ev;->b(Lcom/estrongs/android/ui/dialog/ev;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ey;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Lcom/estrongs/android/ui/dialog/ev;

    invoke-static {v4}, Lcom/estrongs/android/ui/dialog/ev;->b(Lcom/estrongs/android/ui/dialog/ev;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Lcom/estrongs/android/ui/dialog/ev;

    invoke-static {v5}, Lcom/estrongs/android/ui/dialog/ev;->e(Lcom/estrongs/android/ui/dialog/ev;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/estrongs/android/pop/ad;->g(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Lcom/estrongs/android/ui/dialog/ev;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ev;->b(Lcom/estrongs/android/ui/dialog/ev;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ey;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/pop/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
