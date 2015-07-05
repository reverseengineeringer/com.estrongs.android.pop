.class Lcom/estrongs/android/pop/view/dz;
.super Lcom/estrongs/a/a;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/dy;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/dy;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/dz;->a:Lcom/estrongs/android/pop/view/dy;

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public task()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/dz;->a:Lcom/estrongs/android/pop/view/dy;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dy;->a:Lcom/estrongs/fs/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dz;->a:Lcom/estrongs/android/pop/view/dy;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/dy;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/dz;->a:Lcom/estrongs/android/pop/view/dy;

    iget-boolean v2, v2, Lcom/estrongs/android/pop/view/dy;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
