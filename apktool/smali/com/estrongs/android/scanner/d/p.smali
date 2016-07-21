.class Lcom/estrongs/android/scanner/d/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/d/m;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/scanner/d/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/p;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/scanner/d/p;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/p;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/m;->d(Lcom/estrongs/android/scanner/d/m;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/p;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/p;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/m;->d(Lcom/estrongs/android/scanner/d/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/p;->a:Lcom/estrongs/android/scanner/d/m;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/m;->b:Lcom/estrongs/android/scanner/d/a;

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/p;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-static {v1}, Lcom/estrongs/android/scanner/d/m;->d(Lcom/estrongs/android/scanner/d/m;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/d/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/p;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/m;->d(Lcom/estrongs/android/scanner/d/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method
