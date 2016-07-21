.class Lcom/dianxinos/library/notify/download/StopRequestException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = -0x765a35dfdbf60533L


# instance fields
.field public mFinalStatus:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/dianxinos/library/notify/download/StopRequestException;->mFinalStatus:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/dianxinos/library/notify/download/StopRequestException;->mFinalStatus:I

    return-void
.end method
