.class Lcom/estrongs/android/view/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/view/ak;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ak;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ax;->b:Lcom/estrongs/android/view/ak;

    iput-object p2, p0, Lcom/estrongs/android/view/ax;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/ax;->b:Lcom/estrongs/android/view/ak;

    iget-object v1, p0, Lcom/estrongs/android/view/ax;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/view/ak;->b(Lcom/estrongs/android/view/ak;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ax;->b:Lcom/estrongs/android/view/ak;

    new-instance v1, Lcom/estrongs/android/view/bg;

    iget-object v2, p0, Lcom/estrongs/android/view/ax;->b:Lcom/estrongs/android/view/ak;

    invoke-direct {v1, v2}, Lcom/estrongs/android/view/bg;-><init>(Lcom/estrongs/android/view/ak;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/view/ak;Lcom/estrongs/android/view/bg;)Lcom/estrongs/android/view/bg;

    iget-object v0, p0, Lcom/estrongs/android/view/ax;->b:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->d(Lcom/estrongs/android/view/ak;)Lcom/estrongs/android/view/bg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/bg;->start()V

    goto :goto_0
.end method
