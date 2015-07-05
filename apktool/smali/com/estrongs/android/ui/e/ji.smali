.class Lcom/estrongs/android/ui/e/ji;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/jc;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/jc;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ji;->a:Lcom/estrongs/android/ui/e/jc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ji;->a:Lcom/estrongs/android/ui/e/jc;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/e/jc;->a(Lcom/estrongs/android/ui/e/jc;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ji;->a:Lcom/estrongs/android/ui/e/jc;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/jc;->d(Lcom/estrongs/android/ui/e/jc;)Lcom/estrongs/android/ui/e/jj;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/ui/e/jp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ji;->a:Lcom/estrongs/android/ui/e/jc;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/jc;->d(Lcom/estrongs/android/ui/e/jc;)Lcom/estrongs/android/ui/e/jj;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/e/jp;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/jp;->d()V

    :cond_0
    return-void
.end method
