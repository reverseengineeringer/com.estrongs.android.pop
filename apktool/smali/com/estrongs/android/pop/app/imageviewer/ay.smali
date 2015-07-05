.class Lcom/estrongs/android/pop/app/imageviewer/ay;
.super Lcom/estrongs/android/pop/app/imageviewer/t;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ay;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/app/imageviewer/t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Landroid/graphics/Bitmap;
    .locals 4

    const/16 v0, 0x320

    const/high16 v1, 0x300000

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->a(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
