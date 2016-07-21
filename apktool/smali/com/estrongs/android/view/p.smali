.class Lcom/estrongs/android/view/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/view/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/p;->b:Lcom/estrongs/android/view/g;

    iput-object p2, p0, Lcom/estrongs/android/view/p;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/p;->b:Lcom/estrongs/android/view/g;

    iget-object v1, p0, Lcom/estrongs/android/view/p;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/view/g;->b(Lcom/estrongs/android/view/g;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/p;->b:Lcom/estrongs/android/view/g;

    new-instance v1, Lcom/estrongs/android/view/t;

    iget-object v2, p0, Lcom/estrongs/android/view/p;->b:Lcom/estrongs/android/view/g;

    invoke-direct {v1, v2}, Lcom/estrongs/android/view/t;-><init>(Lcom/estrongs/android/view/g;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/view/g;->a(Lcom/estrongs/android/view/g;Lcom/estrongs/android/view/t;)Lcom/estrongs/android/view/t;

    iget-object v0, p0, Lcom/estrongs/android/view/p;->b:Lcom/estrongs/android/view/g;

    invoke-static {v0}, Lcom/estrongs/android/view/g;->d(Lcom/estrongs/android/view/g;)Lcom/estrongs/android/view/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/t;->start()V

    goto :goto_0
.end method
