.class Lcom/estrongs/android/pop/app/imageviewer/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->a:Lcom/estrongs/android/pop/app/imageviewer/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->a:Lcom/estrongs/android/pop/app/imageviewer/m;

    iget-object v3, v0, Lcom/estrongs/android/pop/app/imageviewer/m;->e:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->a:Lcom/estrongs/android/pop/app/imageviewer/m;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/m;->d:I

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->c:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->a:Lcom/estrongs/android/pop/app/imageviewer/m;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/m;->d:I

    if-lez v0, :cond_1

    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->a:Lcom/estrongs/android/pop/app/imageviewer/m;

    iget v3, v3, Lcom/estrongs/android/pop/app/imageviewer/m;->d:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->a:Lcom/estrongs/android/pop/app/imageviewer/m;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->a:Lcom/estrongs/android/pop/app/imageviewer/m;

    iget-object v4, v4, Lcom/estrongs/android/pop/app/imageviewer/m;->c:[Landroid/media/FaceDetector$Face;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lcom/estrongs/android/pop/app/imageviewer/m;->a(Lcom/estrongs/android/pop/app/imageviewer/m;Landroid/media/FaceDetector$Face;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->a:Lcom/estrongs/android/pop/app/imageviewer/m;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/m;->a(Lcom/estrongs/android/pop/app/imageviewer/m;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->a:Lcom/estrongs/android/pop/app/imageviewer/m;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/m;->e:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->d(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->invalidate()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->a:Lcom/estrongs/android/pop/app/imageviewer/m;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/m;->e:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->d(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->a:Lcom/estrongs/android/pop/app/imageviewer/m;

    iget-object v3, v0, Lcom/estrongs/android/pop/app/imageviewer/m;->e:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->a:Lcom/estrongs/android/pop/app/imageviewer/m;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/m;->e:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->d(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Lcom/estrongs/android/pop/app/imageviewer/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    iput-object v0, v3, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->e:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/n;->a:Lcom/estrongs/android/pop/app/imageviewer/m;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/m;->e:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->e:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a(Z)V

    :cond_3
    return-void
.end method
