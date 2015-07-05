.class public Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xe3d91556a238b7cL


# instance fields
.field public cachePath:Ljava/lang/String;

.field public lastModified:J

.field public localFileLastModified:J

.field public path:Ljava/lang/String;

.field public size:J

.field public tmpPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/h;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->path:Ljava/lang/String;

    iput-wide v2, p0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->size:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->lastModified:J

    iput-object v0, p0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->tmpPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->cachePath:Ljava/lang/String;

    iput-wide v2, p0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->localFileLastModified:J

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->path:Ljava/lang/String;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->size:J

    invoke-interface {p1}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer$RemoteFile;->lastModified:J

    return-void
.end method
