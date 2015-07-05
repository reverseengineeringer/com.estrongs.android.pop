.class public Lcom/estrongs/android/util/m;
.super Ljava/lang/Thread;


# instance fields
.field protected g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/util/m;->g:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/util/m;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/util/m;->g:Z

    invoke-virtual {p0}, Lcom/estrongs/android/util/m;->interrupt()V

    :cond_0
    return-void
.end method
