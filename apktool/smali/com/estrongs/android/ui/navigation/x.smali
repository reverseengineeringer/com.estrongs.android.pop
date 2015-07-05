.class Lcom/estrongs/android/ui/navigation/x;
.super Lcom/estrongs/android/ui/e/jk;


# instance fields
.field final synthetic g:Lcom/estrongs/android/ui/navigation/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/s;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/x;->g:Lcom/estrongs/android/ui/navigation/s;

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/ui/e/jk;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/x;->g:Lcom/estrongs/android/ui/navigation/s;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/navigation/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/x;->g:Lcom/estrongs/android/ui/navigation/s;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/navigation/s;->c()V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/ui/e/jk;->d()V

    return-void
.end method
