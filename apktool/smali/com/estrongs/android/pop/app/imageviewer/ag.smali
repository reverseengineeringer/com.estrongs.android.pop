.class final Lcom/estrongs/android/pop/app/imageviewer/ag;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/c;Landroid/os/Handler;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ag;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/ag;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/ag;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/imageviewer/ag;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ag;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->p()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ag;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->j()Landroid/graphics/BitmapFactory$Options;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ag;->b:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/ah;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/ah;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ag;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
