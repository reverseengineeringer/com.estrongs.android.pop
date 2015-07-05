.class Lcom/estrongs/android/pop/app/imageviewer/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/pop/app/imageviewer/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/i;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/j;->b:Lcom/estrongs/android/pop/app/imageviewer/i;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/app/imageviewer/j;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/j;->b:Lcom/estrongs/android/pop/app/imageviewer/i;

    iget-object v1, v0, Lcom/estrongs/android/pop/app/imageviewer/i;->d:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/j;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/j;->b:Lcom/estrongs/android/pop/app/imageviewer/i;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/i;->d:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
