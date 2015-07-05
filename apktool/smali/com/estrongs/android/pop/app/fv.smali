.class Lcom/estrongs/android/pop/app/fv;
.super Landroid/widget/FrameLayout;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/fv;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/fv;->b:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/fv;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/fw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/fw;-><init>(Lcom/estrongs/android/pop/app/fv;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/fv;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/fv;->b:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FileExplorerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "containerEsFrameLayout.draw() catchs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
