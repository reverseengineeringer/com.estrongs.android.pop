.class Lcom/estrongs/android/ui/view/ad;
.super Lcom/estrongs/android/pop/app/c/e;


# instance fields
.field final synthetic b:Lcom/estrongs/android/ui/view/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ad;->b:Lcom/estrongs/android/ui/view/ac;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/android/pop/app/c/g;)Z
    .locals 1

    iget-object v0, p1, Lcom/estrongs/android/pop/app/c/g;->b:Lcom/estrongs/android/pop/app/c/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->b:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/view/ac;->a(Lcom/estrongs/android/pop/app/c/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lcom/estrongs/android/pop/app/c/g;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/view/ad;->a(Lcom/estrongs/android/pop/app/c/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->b:Lcom/estrongs/android/ui/view/ac;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/ac;->a(Lcom/estrongs/android/ui/view/ac;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/view/ae;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/view/ae;-><init>(Lcom/estrongs/android/ui/view/ad;Lcom/estrongs/android/pop/app/c/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
