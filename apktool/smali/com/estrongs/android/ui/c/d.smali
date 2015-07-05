.class Lcom/estrongs/android/ui/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/d;->a:Lcom/estrongs/android/ui/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/d;->a:Lcom/estrongs/android/ui/c/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/a;->c(Lcom/estrongs/android/ui/c/a;)Lcom/estrongs/android/ui/c/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/f;->m()V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/d;->a:Lcom/estrongs/android/ui/c/a;

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/android/ui/c/a;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/c/d;->a:Lcom/estrongs/android/ui/c/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/a;->d(Lcom/estrongs/android/ui/c/a;)Lcom/estrongs/android/view/cb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/d;->a:Lcom/estrongs/android/ui/c/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/a;->e(Lcom/estrongs/android/ui/c/a;)Lcom/estrongs/android/view/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/d;->a:Lcom/estrongs/android/ui/c/a;

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/view/cb;->a(Lcom/estrongs/android/view/aw;Z)V

    :cond_0
    return-void
.end method
