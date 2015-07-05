.class Lcom/estrongs/android/pop/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/j;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/j;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/k;->a:Lcom/estrongs/android/pop/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v1, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v1}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    const-string v0, "refresh"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/pop/k;->a:Lcom/estrongs/android/pop/j;

    iget-object v0, v0, Lcom/estrongs/android/pop/j;->b:Lcom/estrongs/android/pop/h;

    iget-object v0, v0, Lcom/estrongs/android/pop/h;->a:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/k;->a:Lcom/estrongs/android/pop/j;

    iget-object v2, v2, Lcom/estrongs/android/pop/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Lcom/estrongs/android/view/aw;

    return-void
.end method
