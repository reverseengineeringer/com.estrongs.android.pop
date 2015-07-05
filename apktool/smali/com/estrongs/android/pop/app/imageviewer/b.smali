.class public Lcom/estrongs/android/pop/app/imageviewer/b;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

.field b:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/estrongs/android/pop/app/imageviewer/an;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/b;->c()V

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/android/pop/app/imageviewer/an;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/b;->b:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/b;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/an;

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/b;->a()Lcom/estrongs/android/pop/app/imageviewer/an;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/an;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/b;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/b;->b:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/b;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/an;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/an;->h()V

    :cond_0
    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/b;->b:Ljava/lang/ref/SoftReference;

    return-void
.end method
