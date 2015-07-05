.class public Lcom/estrongs/android/pop/utils/ThreadUtil$InvalidThreadExcpetion;
.super Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "An attempt was made to invoke an operation which can only be executed by the non user-interface thread from user-interface thread"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
