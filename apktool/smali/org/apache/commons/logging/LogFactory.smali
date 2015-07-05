.class public Lorg/apache/commons/logging/LogFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .locals 2

    new-instance v0, Lorg/apache/commons/logging/LogFactory$Logger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/logging/LogFactory$Logger;-><init>(Lorg/apache/commons/logging/LogFactory$1;)V

    return-object v0
.end method

.method public static getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 2

    new-instance v0, Lorg/apache/commons/logging/LogFactory$Logger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/logging/LogFactory$Logger;-><init>(Lorg/apache/commons/logging/LogFactory$1;)V

    return-object v0
.end method
