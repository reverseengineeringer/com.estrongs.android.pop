.class public Lcom/estrongs/fs/impl/r/b;
.super Lcom/estrongs/fs/x;


# instance fields
.field public timeForLog:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/fs/w;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;Lcom/estrongs/fs/w;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/fs/w;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;Lcom/estrongs/fs/w;Ljava/lang/String;)V

    iput-wide p4, p0, Lcom/estrongs/fs/impl/r/b;->timeForLog:J

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/r/b;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public setAbsolutePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/r/b;->absolutePath:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/r/b;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/r/b;->path:Ljava/lang/String;

    return-void
.end method
