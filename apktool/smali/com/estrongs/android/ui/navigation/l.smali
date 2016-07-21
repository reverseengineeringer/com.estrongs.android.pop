.class Lcom/estrongs/android/ui/navigation/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/navigation/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/l;->a:Lcom/estrongs/android/ui/navigation/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/l;->a:Lcom/estrongs/android/ui/navigation/k;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/k;->a:Lcom/estrongs/android/ui/navigation/i;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/i;->a:Lcom/estrongs/android/ui/navigation/h;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/navigation/h;->d()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->c()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/l;->a:Lcom/estrongs/android/ui/navigation/k;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/k;->a:Lcom/estrongs/android/ui/navigation/i;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/i;->a:Lcom/estrongs/android/ui/navigation/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/h;->c(Lcom/estrongs/android/ui/navigation/h;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/l;->a:Lcom/estrongs/android/ui/navigation/k;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/k;->a:Lcom/estrongs/android/ui/navigation/i;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/i;->a:Lcom/estrongs/android/ui/navigation/h;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/navigation/h;->b()V

    return-void
.end method
