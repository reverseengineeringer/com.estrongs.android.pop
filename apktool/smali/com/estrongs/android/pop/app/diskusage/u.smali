.class public Lcom/estrongs/android/pop/app/diskusage/u;
.super Lcom/estrongs/fs/impl/local/f;


# instance fields
.field protected a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/u;->a:Ljava/io/File;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/u;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/u;->a:Ljava/io/File;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/estrongs/android/pop/app/diskusage/u;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/estrongs/android/pop/app/diskusage/u;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/u;->a:Ljava/io/File;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/diskusage/u;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/u;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method
