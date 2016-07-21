.class Lcom/estrongs/android/pop/app/analysis/view/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/view/j;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/view/j;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/view/k;->a:Lcom/estrongs/android/pop/app/analysis/view/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/k;->a:Lcom/estrongs/android/pop/app/analysis/view/j;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/view/j;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->b(Lcom/estrongs/android/pop/app/analysis/view/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/k;->a:Lcom/estrongs/android/pop/app/analysis/view/j;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/view/j;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->f(Lcom/estrongs/android/pop/app/analysis/view/i;)Lcom/estrongs/android/pop/app/analysis/view/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/analysis/view/r;->b()V

    :cond_0
    return-void
.end method
