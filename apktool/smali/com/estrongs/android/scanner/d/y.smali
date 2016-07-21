.class Lcom/estrongs/android/scanner/d/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/d/t;

.field private b:Lcom/estrongs/android/scanner/a/c;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/scanner/d/t;Lcom/estrongs/android/scanner/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/y;->a:Lcom/estrongs/android/scanner/d/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/scanner/d/y;->b:Lcom/estrongs/android/scanner/a/c;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/y;->a:Lcom/estrongs/android/scanner/d/t;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/t;->c(Lcom/estrongs/android/scanner/d/t;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/y;->b:Lcom/estrongs/android/scanner/a/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/y;->a:Lcom/estrongs/android/scanner/d/t;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/t;->c(Lcom/estrongs/android/scanner/d/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/y;->a:Lcom/estrongs/android/scanner/d/t;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/t;->b:Lcom/estrongs/android/scanner/d/a;

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/y;->a:Lcom/estrongs/android/scanner/d/t;

    invoke-virtual {v1}, Lcom/estrongs/android/scanner/d/t;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/y;->a:Lcom/estrongs/android/scanner/d/t;

    invoke-static {v2}, Lcom/estrongs/android/scanner/d/t;->c(Lcom/estrongs/android/scanner/d/t;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/scanner/d/a;->d(Ljava/lang/String;Ljava/util/List;)Z

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/y;->a:Lcom/estrongs/android/scanner/d/t;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/t;->c(Lcom/estrongs/android/scanner/d/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method
