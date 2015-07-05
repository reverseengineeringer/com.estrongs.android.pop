.class Lcom/estrongs/android/view/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/view/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/n;->b:Lcom/estrongs/android/view/e;

    iput-object p2, p0, Lcom/estrongs/android/view/n;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/n;->b:Lcom/estrongs/android/view/e;

    iget-object v1, p0, Lcom/estrongs/android/view/n;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/view/e;->b(Lcom/estrongs/android/view/e;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/n;->b:Lcom/estrongs/android/view/e;

    new-instance v1, Lcom/estrongs/android/view/r;

    iget-object v2, p0, Lcom/estrongs/android/view/n;->b:Lcom/estrongs/android/view/e;

    invoke-direct {v1, v2}, Lcom/estrongs/android/view/r;-><init>(Lcom/estrongs/android/view/e;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/view/e;->a(Lcom/estrongs/android/view/e;Lcom/estrongs/android/view/r;)Lcom/estrongs/android/view/r;

    iget-object v0, p0, Lcom/estrongs/android/view/n;->b:Lcom/estrongs/android/view/e;

    invoke-static {v0}, Lcom/estrongs/android/view/e;->d(Lcom/estrongs/android/view/e;)Lcom/estrongs/android/view/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/r;->start()V

    goto :goto_0
.end method
