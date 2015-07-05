.class public Lcom/estrongs/android/pop/spfs/SPFileSystem$CacheRefreshCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/netfs/INetRefreshCallback;


# instance fields
.field private fullpath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/SPFileSystem$CacheRefreshCallback;->fullpath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public operation_end(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public operation_start()V
    .locals 0

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/SPFileSystem$CacheRefreshCallback;->fullpath:Ljava/lang/String;

    return-void
.end method
