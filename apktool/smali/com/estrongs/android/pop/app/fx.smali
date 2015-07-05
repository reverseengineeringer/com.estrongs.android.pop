.class Lcom/estrongs/android/pop/app/fx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/fw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/fw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/fx;->a:Lcom/estrongs/android/pop/app/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fx;->a:Lcom/estrongs/android/pop/app/fw;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/fw;->a:Lcom/estrongs/android/pop/app/fv;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/fv;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/nativetool/c;->a()Landroid/net/LocalSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
