.class Lcom/estrongs/android/pop/app/lz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/lz;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/lz;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/lz;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ma;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ma;-><init>(Lcom/estrongs/android/pop/app/lz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lz;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/lz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lz;->b:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->i(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/mb;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/mb;-><init>(Lcom/estrongs/android/pop/app/lz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
