.class final Lcom/estrongs/android/pop/app/fu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[[Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[Ljava/lang/Exception;


# direct methods
.method constructor <init>([[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/fu;->a:[[Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/fu;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/fu;->c:[Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/fu;->a:[[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/fu;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/fu;->c:[Ljava/lang/Exception;

    aput-object v0, v1, v3

    goto :goto_0
.end method
