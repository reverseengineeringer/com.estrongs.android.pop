.class Lcom/estrongs/android/pop/view/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/appinfo/v;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/j;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/j;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/k;->a:Lcom/estrongs/android/pop/view/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/k;->a:Lcom/estrongs/android/pop/view/j;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/j;->a:Lcom/estrongs/android/pop/view/h;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/h;->a:Lcom/estrongs/android/pop/view/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/g;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/pop/view/l;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/l;-><init>(Lcom/estrongs/android/pop/view/k;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
