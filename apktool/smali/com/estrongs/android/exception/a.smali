.class public Lcom/estrongs/android/exception/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    move-object v1, p0

    :goto_0
    instance-of v0, v1, Lcom/estrongs/android/exception/AbstractException;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/estrongs/android/exception/AbstractException;

    invoke-virtual {v0}, Lcom/estrongs/android/exception/AbstractException;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v1, Lcom/estrongs/android/exception/AbstractException;

    invoke-virtual {v1}, Lcom/estrongs/android/exception/AbstractException;->getException()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method
