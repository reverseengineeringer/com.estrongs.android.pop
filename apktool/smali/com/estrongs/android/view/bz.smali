.class Lcom/estrongs/android/view/bz;
.super Landroid/os/FileObserver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/aw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/aw;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/view/bz;->a:Lcom/estrongs/android/view/aw;

    const/16 v0, 0x3c0

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/bz;->a:Lcom/estrongs/android/view/aw;

    iget-boolean v0, v0, Lcom/estrongs/android/view/aw;->X:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bz;->a:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0, v1, v1}, Lcom/estrongs/android/view/aw;->a(ZZ)V

    :cond_0
    return-void
.end method
