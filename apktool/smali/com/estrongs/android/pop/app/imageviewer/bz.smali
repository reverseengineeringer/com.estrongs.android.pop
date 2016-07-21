.class Lcom/estrongs/android/pop/app/imageviewer/bz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bz;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iput p2, p0, Lcom/estrongs/android/pop/app/imageviewer/bz;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bz;->a:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bz;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bz;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bz;->a:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bz;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
