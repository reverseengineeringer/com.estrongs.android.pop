.class Lcom/estrongs/android/ui/c/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/b/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/e;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/e;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->h(Lcom/estrongs/android/ui/c/b/a;)Lcom/estrongs/android/ui/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/e;->a:Lcom/estrongs/android/ui/c/b/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/a;->h(Lcom/estrongs/android/ui/c/b/a;)Lcom/estrongs/android/ui/c/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/a/b;->a()V

    :cond_0
    return-void
.end method
