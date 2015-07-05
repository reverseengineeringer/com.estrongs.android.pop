.class Lcom/estrongs/android/pop/app/imageviewer/cc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/imageviewer/v;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/pop/app/imageviewer/ch;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;ILcom/estrongs/android/pop/app/imageviewer/ch;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/cc;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iput p2, p0, Lcom/estrongs/android/pop/app/imageviewer/cc;->a:I

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/cc;->b:Lcom/estrongs/android/pop/app/imageviewer/ch;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/imageviewer/cc;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/cc;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-boolean v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/cc;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/cc;->a:I

    invoke-interface {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/cc;->b:Lcom/estrongs/android/pop/app/imageviewer/ch;

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->b()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lcom/estrongs/android/pop/app/imageviewer/an;-><init>(Landroid/graphics/Bitmap;I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/cc;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/a;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Lcom/estrongs/android/pop/app/imageviewer/a;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Ljava/lang/ref/SoftReference;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/cc;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/cd;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/estrongs/android/pop/app/imageviewer/cd;-><init>(Lcom/estrongs/android/pop/app/imageviewer/cc;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/graphics/Bitmap;Lcom/estrongs/android/pop/app/imageviewer/an;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/p;->a(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
