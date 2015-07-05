.class public Lcom/estrongs/fs/impl/pcs/b;
.super Lcom/estrongs/fs/n;


# static fields
.field private static a:Lcom/estrongs/fs/impl/pcs/b;


# direct methods
.method private constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/fs/m;->R:Lcom/estrongs/fs/m;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    const v3, 0x7f0b052d

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/estrongs/fs/n;-><init>(Ljava/lang/String;Lcom/estrongs/fs/m;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/pcs/b;->b()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/pcs/b;->lastModified:J

    return-void
.end method

.method public static a()Lcom/estrongs/fs/impl/pcs/b;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/pcs/b;->a:Lcom/estrongs/fs/impl/pcs/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/pcs/b;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/pcs/b;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/pcs/b;->a:Lcom/estrongs/fs/impl/pcs/b;

    :cond_0
    sget-object v0, Lcom/estrongs/fs/impl/pcs/b;->a:Lcom/estrongs/fs/impl/pcs/b;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/pcs/b;->b()Ljava/lang/String;

    sget-object v0, Lcom/estrongs/fs/impl/pcs/b;->a:Lcom/estrongs/fs/impl/pcs/b;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/util/am;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/n;->path:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/impl/pcs/b;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/fs/n;->absolutePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/impl/pcs/b;->path:Ljava/lang/String;

    return-object v0
.end method
