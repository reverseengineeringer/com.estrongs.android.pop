.class Lcom/estrongs/android/ui/adapter/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/appinfo/r;


# instance fields
.field a:I

.field final synthetic b:Lcom/estrongs/android/ui/adapter/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/k;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/n;->b:Lcom/estrongs/android/ui/adapter/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/adapter/n;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/adapter/n;->a:I

    if-lez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/estrongs/android/ui/adapter/o;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/o;-><init>(Lcom/estrongs/android/ui/adapter/n;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/fs/h;)V
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/adapter/n;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/adapter/n;->a:I

    return-void
.end method
