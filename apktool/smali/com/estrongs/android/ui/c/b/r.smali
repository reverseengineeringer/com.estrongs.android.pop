.class Lcom/estrongs/android/ui/c/b/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/b/s;

.field final synthetic b:Lcom/estrongs/android/ui/c/b/q;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/q;Lcom/estrongs/android/ui/c/b/s;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/r;->b:Lcom/estrongs/android/ui/c/b/q;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/b/r;->a:Lcom/estrongs/android/ui/c/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/r;->a:Lcom/estrongs/android/ui/c/b/s;

    iget-wide v0, v0, Lcom/estrongs/android/ui/c/b/s;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/r;->b:Lcom/estrongs/android/ui/c/b/q;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/q;->a:Lcom/estrongs/android/ui/c/b/l;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/r;->a:Lcom/estrongs/android/ui/c/b/s;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/s;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/c/b/l;->b(Lcom/estrongs/android/ui/c/b/l;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/r;->b:Lcom/estrongs/android/ui/c/b/q;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/q;->a:Lcom/estrongs/android/ui/c/b/l;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/l;->l()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/r;->b:Lcom/estrongs/android/ui/c/b/q;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/q;->a:Lcom/estrongs/android/ui/c/b/l;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/r;->a:Lcom/estrongs/android/ui/c/b/s;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/c/b/l;->a(Lcom/estrongs/android/ui/c/b/l;Lcom/estrongs/android/ui/c/b/s;)V

    goto :goto_0
.end method
