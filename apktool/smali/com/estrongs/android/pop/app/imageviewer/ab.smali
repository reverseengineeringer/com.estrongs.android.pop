.class Lcom/estrongs/android/pop/app/imageviewer/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/an;

.field final synthetic b:Z

.field final synthetic c:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;Lcom/estrongs/android/pop/app/imageviewer/an;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ab;->c:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/ab;->a:Lcom/estrongs/android/pop/app/imageviewer/an;

    iput-boolean p3, p0, Lcom/estrongs/android/pop/app/imageviewer/ab;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ab;->c:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ab;->a:Lcom/estrongs/android/pop/app/imageviewer/an;

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ab;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(Lcom/estrongs/android/pop/app/imageviewer/an;Z)V

    return-void
.end method
