.class Lcom/estrongs/android/pop/app/imageviewer/cd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/estrongs/android/pop/app/imageviewer/an;

.field final synthetic d:Lcom/estrongs/android/pop/app/imageviewer/cc;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/cc;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/graphics/Bitmap;Lcom/estrongs/android/pop/app/imageviewer/an;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->d:Lcom/estrongs/android/pop/app/imageviewer/cc;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->b:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->c:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->d:Lcom/estrongs/android/pop/app/imageviewer/cc;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/cc;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->d:Lcom/estrongs/android/pop/app/imageviewer/cc;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/cc;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->d:Lcom/estrongs/android/pop/app/imageviewer/cc;

    iget v2, v2, Lcom/estrongs/android/pop/app/imageviewer/cc;->a:I

    invoke-interface {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->d:Lcom/estrongs/android/pop/app/imageviewer/cc;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/cc;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->d:Lcom/estrongs/android/pop/app/imageviewer/cc;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/cc;->a:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->d:Lcom/estrongs/android/pop/app/imageviewer/cc;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/cc;->b:Lcom/estrongs/android/pop/app/imageviewer/ch;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ch;->b(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->d:Lcom/estrongs/android/pop/app/imageviewer/cc;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/cc;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->d:Lcom/estrongs/android/pop/app/imageviewer/cc;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/cc;->a:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->d:Lcom/estrongs/android/pop/app/imageviewer/cc;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/cc;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->d:Lcom/estrongs/android/pop/app/imageviewer/cc;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/cc;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->d:Lcom/estrongs/android/pop/app/imageviewer/cc;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/cc;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->d:Lcom/estrongs/android/pop/app/imageviewer/cc;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/cc;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/p;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->d:Lcom/estrongs/android/pop/app/imageviewer/cc;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/cc;->b:Lcom/estrongs/android/pop/app/imageviewer/ch;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->c:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ch;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Lcom/estrongs/android/pop/app/imageviewer/an;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->d:Lcom/estrongs/android/pop/app/imageviewer/cc;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/cc;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->d:Lcom/estrongs/android/pop/app/imageviewer/cc;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/cc;->a:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->d:Lcom/estrongs/android/pop/app/imageviewer/cc;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/cc;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/cd;->d:Lcom/estrongs/android/pop/app/imageviewer/cc;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/cc;->b:Lcom/estrongs/android/pop/app/imageviewer/ch;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ch;->a:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    iput-object v1, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    goto :goto_1
.end method
