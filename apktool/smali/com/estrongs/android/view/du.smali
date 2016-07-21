.class Lcom/estrongs/android/view/du;
.super Landroid/os/FileObserver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cr;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/view/du;->a:Lcom/estrongs/android/view/cr;

    const/16 v0, 0x3c0

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/du;->a:Lcom/estrongs/android/view/cr;

    iget-boolean v0, v0, Lcom/estrongs/android/view/cr;->aa:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/du;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0, v1, v1}, Lcom/estrongs/android/view/cr;->a(ZZ)V

    :cond_0
    return-void
.end method
