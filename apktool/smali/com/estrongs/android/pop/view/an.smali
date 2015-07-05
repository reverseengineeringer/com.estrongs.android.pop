.class Lcom/estrongs/android/pop/view/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/appinfo/u;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/am;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/am;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/an;->a:Lcom/estrongs/android/pop/view/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/an;->a:Lcom/estrongs/android/pop/view/am;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/am;->a:Lcom/estrongs/android/pop/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/ak;->a:Lcom/estrongs/android/pop/view/aj;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/pop/view/ao;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ao;-><init>(Lcom/estrongs/android/pop/view/an;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
