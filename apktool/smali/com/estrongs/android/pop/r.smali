.class Lcom/estrongs/android/pop/r;
.super Lcom/estrongs/android/ui/dialog/dp;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a/e;

.field final synthetic b:Lcom/estrongs/android/pop/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/n;Landroid/content/Context;ZLcom/estrongs/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/r;->b:Lcom/estrongs/android/pop/n;

    iput-object p4, p0, Lcom/estrongs/android/pop/r;->a:Lcom/estrongs/a/a/e;

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/ui/dialog/dp;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/r;->a:Lcom/estrongs/a/a/e;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/r;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/a/a/e;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/r;->a:Lcom/estrongs/a/a/e;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/r;->f()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/a/a/e;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/r;->b:Lcom/estrongs/android/pop/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/n;->b:Lcom/estrongs/a/a;

    const/4 v1, 0x5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/android/pop/r;->b:Lcom/estrongs/android/pop/n;

    iget-object v4, v4, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/r;->dismiss()V

    return-void
.end method

.method protected b()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/r;->a:Lcom/estrongs/a/a/e;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/a/a/e;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/r;->b:Lcom/estrongs/android/pop/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/n;->b:Lcom/estrongs/a/a;

    const/4 v1, 0x5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/android/pop/r;->b:Lcom/estrongs/android/pop/n;

    iget-object v4, v4, Lcom/estrongs/android/pop/n;->a:Lcom/estrongs/a/a/d;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/r;->dismiss()V

    return-void
.end method
