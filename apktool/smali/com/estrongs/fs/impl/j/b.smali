.class public Lcom/estrongs/fs/impl/j/b;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/impl/j/f;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/netfs/INetFileSystem;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/fs/impl/j/b;->b:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/fs/impl/j/b;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/j/b;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/j/b;->e:Ljava/util/HashMap;

    sget-object v0, Lcom/estrongs/fs/impl/j/b;->e:Ljava/util/HashMap;

    const-string v1, "dropbox"

    const-string v2, "com.estrongs.android.pop.netfs.DropboxFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/fs/impl/j/b;->e:Ljava/util/HashMap;

    const-string v1, "kanbox"

    const-string v2, "com.estrongs.android.pop.netfs.KanboxFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/fs/impl/j/b;->e:Ljava/util/HashMap;

    const-string v1, "sugarsync"

    const-string v2, "com.estrongs.android.pop.netfs.SugarsyncFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/fs/impl/j/b;->e:Ljava/util/HashMap;

    const-string v1, "kuaipan"

    const-string v2, "com.estrongs.android.pop.netfs.KuaipanFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/fs/impl/j/b;->e:Ljava/util/HashMap;

    const-string v1, "box"

    const-string v2, "com.estrongs.android.pop.netfs.BoxnetFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/fs/impl/j/b;->e:Ljava/util/HashMap;

    const-string v1, "pcs"

    const-string v2, "com.estrongs.fs.impl.PcsFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/fs/impl/j/b;->e:Ljava/util/HashMap;

    const-string v1, "vdisk"

    const-string v2, "com.estrongs.android.pop.netfs.VDiskFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/fs/impl/j/b;->e:Ljava/util/HashMap;

    const-string v1, "onedrive"

    const-string v2, "com.estrongs.android.pop.netfs.SkydrvFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/fs/impl/j/b;->e:Ljava/util/HashMap;

    const-string v1, "gdrive"

    const-string v2, "com.estrongs.android.pop.netfs.GdriveFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/fs/impl/j/b;->e:Ljava/util/HashMap;

    const-string v1, "s3"

    const-string v2, "com.estrongs.android.pop.netfs.S3FileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/fs/impl/j/b;->e:Ljava/util/HashMap;

    const-string v1, "megacloud"

    const-string v2, "com.estrongs.android.pop.netfs.MegacloudFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/fs/impl/j/b;->e:Ljava/util/HashMap;

    const-string v1, "mediafire"

    const-string v2, "com.estrongs.android.pop.netfs.MediaFireFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/j/b;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/estrongs/fs/impl/j/b;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/estrongs/android/pop/netfs/NetFileInfo;)Lcom/estrongs/fs/c;
    .locals 4

    new-instance v0, Lcom/estrongs/fs/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/c;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/fs/c;->o:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->isDirectory:Z

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->d:Z

    iget-boolean v1, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->readable:Z

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->k:Z

    iget-boolean v1, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->writable:Z

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->l:Z

    iget-boolean v1, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->hidden:Z

    iput-boolean v1, v0, Lcom/estrongs/fs/c;->m:Z

    iget-wide v2, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->lastModifiedTime:J

    iput-wide v2, v0, Lcom/estrongs/fs/c;->j:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->size:J

    iput-wide v2, v0, Lcom/estrongs/fs/c;->e:J

    return-object v0
.end method

.method public static a(Ljava/lang/String;JZ)Ljava/io/OutputStream;
    .locals 7

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "yandex"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/estrongs/fs/impl/r/b;->a(Ljava/lang/String;J)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    move v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->getFileOutputStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    instance-of v2, v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    invoke-virtual {v0, p0, p1}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    instance-of v4, v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/estrongs/fs/i;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/netfs/NetFsException;

    const-string v1, "MalFormed URL"

    sget-object v2, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_MALFORMED_URL:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/netfs/NetFsException;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)V

    throw v0

    :cond_1
    invoke-static {v6}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v7, "dropbox"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v4, "Dropbox_List"

    const-string v0, "Dropbox_UV"

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {v5, v4, v4}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0, v0}, Lcom/estrongs/android/util/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "yandex"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v0, p3, v1, v2}, Lcom/estrongs/fs/impl/r/b;->a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0

    :cond_5
    const-string v7, "kuaipan"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v4, "\u5feb\u76d8_List"

    const-string v0, "\u5feb\u76d8_UV"

    goto :goto_0

    :cond_6
    const-string v7, "kanbox"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v4, "\u9177\u76d8_List"

    const-string v0, "\u9177\u76d8_UV"

    goto :goto_0

    :cond_7
    const-string v7, "vdisk"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v4, "\u65b0\u6d6a\u5fae\u76d8_List"

    const-string v0, "\u65b0\u6d6a\u5fae\u76d8_UV"

    goto :goto_0

    :cond_8
    const-string v7, "box"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v4, "Box_List"

    const-string v0, "Box_UV"

    goto :goto_0

    :cond_9
    const-string v7, "sugarsync"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v4, "Sugarsync_List"

    const-string v0, "Sugarsync_UV"

    goto :goto_0

    :cond_a
    const-string v7, "onedrive"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v4, "Skydrive_List"

    const-string v0, "Skydrive_UV"

    goto :goto_0

    :cond_b
    const-string v7, "gdrive"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v4, "Gdrive_List"

    const-string v0, "Gdrive_UV"

    goto :goto_0

    :cond_c
    const-string v7, "s3"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v4, "S3_List"

    const-string v0, "S3_UV"

    goto/16 :goto_0

    :cond_d
    const-string v7, "yandex"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v4, "Yandex_List"

    const-string v0, "Yandex_UV"

    goto/16 :goto_0

    :cond_e
    const-string v7, "megacloud"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v4, "Megacloud_List"

    const-string v0, "Megacloud_UV"

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_f
    invoke-static {p0, v8}, Lcom/estrongs/fs/impl/j/b;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_10
    const/4 v7, 0x0

    :try_start_1
    new-instance v5, Lcom/estrongs/fs/impl/j/d;

    invoke-direct {v5}, Lcom/estrongs/fs/impl/j/d;-><init>()V

    invoke-virtual {v5, v6}, Lcom/estrongs/fs/impl/j/d;->a(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "sugarsync"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x5

    new-array v6, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v4, 0x7f0b03af

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v10

    const/4 v10, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v4, 0x7f0b011e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v10

    const/4 v10, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v4, 0x7f0b011f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v10

    const/4 v10, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v4, 0x7f0b0120

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v10

    const/4 v10, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v4, 0x7f0b0121

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v10

    invoke-interface {v0, v1, v2, v6}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->setPrivateContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    move v4, p2

    move-object/from16 v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->listFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/estrongs/android/pop/netfs/INetRefreshCallback;Ljava/util/HashMap;)Ljava/util/Map;
    :try_end_1
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    if-nez v0, :cond_14

    const/4 v0, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    iget-object v3, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    sget-object v4, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_AUTH_FAILED:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne v3, v4, :cond_12

    throw v0

    :cond_12
    iget-object v3, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    sget-object v4, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_LOG_IN:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne v3, v4, :cond_13

    throw v0

    :cond_13
    instance-of v3, v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException;

    if-eqz v3, :cond_1e

    throw v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/netfs/NetFileInfo;

    iget-object v3, v0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->path:Ljava/lang/String;

    invoke-static {v8, v1, v2, v3}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->path:Ljava/lang/String;

    new-instance v6, Lcom/estrongs/fs/impl/j/a;

    invoke-direct {v6, v0}, Lcom/estrongs/fs/impl/j/a;-><init>(Lcom/estrongs/android/pop/netfs/NetFileInfo;)V

    const-string v3, "pcs"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "gdrive"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "box"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_16
    const-string v3, "public_share_link"

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/netfs/NetFileInfo;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_17

    const-string v3, "public_share_link"

    const-string v7, "public_share_link"

    invoke-virtual {v0, v7}, Lcom/estrongs/android/pop/netfs/NetFileInfo;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/estrongs/fs/impl/j/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const-string v3, "web_file_url"

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/netfs/NetFileInfo;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_18

    const-string v3, "web_file_url"

    const-string v7, "web_file_url"

    invoke-virtual {v0, v7}, Lcom/estrongs/android/pop/netfs/NetFileInfo;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/estrongs/fs/impl/j/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const-string v3, "mime_type"

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/netfs/NetFileInfo;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_19

    const-string v3, "mime_type"

    const-string v7, "mime_type"

    invoke-virtual {v0, v7}, Lcom/estrongs/android/pop/netfs/NetFileInfo;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/estrongs/fs/impl/j/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const-string v3, "intent_file_url"

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/netfs/NetFileInfo;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1a

    const-string v3, "intent_file_url"

    const-string v7, "intent_file_url"

    invoke-virtual {v0, v7}, Lcom/estrongs/android/pop/netfs/NetFileInfo;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/estrongs/fs/impl/j/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    invoke-interface {p3, v6}, Lcom/estrongs/fs/i;->a(Lcom/estrongs/fs/h;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-boolean v3, v0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->isDirectory:Z

    if-eqz v3, :cond_1b

    iget v0, v0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->folder_type:I

    sparse-switch v0, :sswitch_data_0

    :cond_1b
    :goto_4
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_0
    sget-object v0, Lcom/estrongs/fs/m;->p:Lcom/estrongs/fs/m;

    invoke-virtual {v6, v0}, Lcom/estrongs/fs/impl/j/a;->setFileType(Lcom/estrongs/fs/m;)V

    goto :goto_4

    :sswitch_1
    const-string v0, "pcs"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/estrongs/fs/m;->E:Lcom/estrongs/fs/m;

    invoke-virtual {v6, v0}, Lcom/estrongs/fs/impl/j/a;->setFileType(Lcom/estrongs/fs/m;)V

    goto :goto_4

    :cond_1c
    sget-object v0, Lcom/estrongs/fs/m;->D:Lcom/estrongs/fs/m;

    invoke-virtual {v6, v0}, Lcom/estrongs/fs/impl/j/a;->setFileType(Lcom/estrongs/fs/m;)V

    goto :goto_4

    :sswitch_2
    sget-object v0, Lcom/estrongs/fs/m;->o:Lcom/estrongs/fs/m;

    invoke-virtual {v6, v0}, Lcom/estrongs/fs/impl/j/a;->setFileType(Lcom/estrongs/fs/m;)V

    goto :goto_4

    :sswitch_3
    sget-object v0, Lcom/estrongs/fs/m;->o:Lcom/estrongs/fs/m;

    invoke-virtual {v6, v0}, Lcom/estrongs/fs/impl/j/a;->setFileType(Lcom/estrongs/fs/m;)V

    goto :goto_4

    :sswitch_4
    sget-object v0, Lcom/estrongs/fs/m;->D:Lcom/estrongs/fs/m;

    invoke-virtual {v6, v0}, Lcom/estrongs/fs/impl/j/a;->setFileType(Lcom/estrongs/fs/m;)V

    goto :goto_4

    :sswitch_5
    sget-object v0, Lcom/estrongs/fs/m;->G:Lcom/estrongs/fs/m;

    invoke-virtual {v6, v0}, Lcom/estrongs/fs/impl/j/a;->setFileType(Lcom/estrongs/fs/m;)V

    goto :goto_4

    :sswitch_6
    sget-object v0, Lcom/estrongs/fs/m;->D:Lcom/estrongs/fs/m;

    invoke-virtual {v6, v0}, Lcom/estrongs/fs/impl/j/a;->setFileType(Lcom/estrongs/fs/m;)V

    goto :goto_4

    :sswitch_7
    sget-object v0, Lcom/estrongs/fs/m;->F:Lcom/estrongs/fs/m;

    invoke-virtual {v6, v0}, Lcom/estrongs/fs/impl/j/a;->setFileType(Lcom/estrongs/fs/m;)V

    goto :goto_4

    :cond_1d
    move-object v0, v4

    goto/16 :goto_1

    :cond_1e
    move-object v0, v7

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x4 -> :sswitch_7
        0x8 -> :sswitch_2
        0x10 -> :sswitch_6
        0x20 -> :sswitch_4
        0x40 -> :sswitch_3
    .end sparse-switch
.end method

.method public static a()V
    .locals 2

    sget-object v1, Lcom/estrongs/fs/impl/j/b;->a:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/fs/impl/j/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/estrongs/fs/impl/j/b;->b:Ljava/lang/String;

    sput-object p1, Lcom/estrongs/fs/impl/j/b;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->setPrivateContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "yandex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, v1}, Lcom/estrongs/fs/impl/j/b;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->isPagingSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/fs/h;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x22

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    instance-of v3, v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    invoke-static {v2}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, p0, v2}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/h;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yandex"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v1, v3}, Lcom/estrongs/fs/impl/r/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v2}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v3, v1}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yandex"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1, p1}, Lcom/estrongs/fs/impl/r/b;->b(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v2}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v3, v1, p1}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->createFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/fs/impl/j/f;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->ak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v3, Lcom/estrongs/fs/impl/j/b;->a:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/estrongs/fs/impl/j/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/j/f;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/j/c;

    invoke-direct {v0, p1, p0, v2}, Lcom/estrongs/fs/impl/j/c;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/j/c;->start()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b(Ljava/lang/String;J)Ljava/io/OutputStream;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v1

    instance-of v1, v1, Lcom/estrongs/fs/b/r;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/r;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/r;->g()Z

    move-result v0

    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;JZ)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    instance-of v2, v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    instance-of v2, v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    invoke-virtual {v0, p0, p1}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "yandex"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/estrongs/android/util/am;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-static {v2, v3, v4, v5}, Lcom/estrongs/fs/impl/r/b;->a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    move v1, v0

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->addServer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;Z)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "yandex"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lcom/estrongs/fs/impl/r/b;->d(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {v2}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v4, v1, p1}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->exists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;
    .locals 1

    invoke-static {p0, p1}, Lcom/estrongs/fs/impl/j/b;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;Z)Lcom/estrongs/android/pop/netfs/NetFileInfo;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yandex"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Lcom/estrongs/fs/impl/r/b;->a(Ljava/lang/String;Z)Lcom/estrongs/fs/c;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;

    invoke-direct {v1}, Lcom/estrongs/android/pop/netfs/NetFileInfo;-><init>()V

    iget-object v3, v2, Lcom/estrongs/fs/c;->o:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/estrongs/fs/c;->o:Ljava/lang/String;

    iput-object v3, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    :goto_1
    iget-object v3, v2, Lcom/estrongs/fs/c;->b:Ljava/lang/String;

    iput-object v3, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->path:Ljava/lang/String;

    iget-boolean v3, v2, Lcom/estrongs/fs/c;->d:Z

    iput-boolean v3, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->isDirectory:Z

    iget-wide v4, v2, Lcom/estrongs/fs/c;->e:J

    iput-wide v4, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->size:J

    iget-wide v4, v2, Lcom/estrongs/fs/c;->h:J

    iput-wide v4, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->createdTime:J

    iget-wide v4, v2, Lcom/estrongs/fs/c;->i:J

    iput-wide v4, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->lastAccessTime:J

    iget-wide v4, v2, Lcom/estrongs/fs/c;->j:J

    iput-wide v4, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->lastModifiedTime:J

    iget-boolean v3, v2, Lcom/estrongs/fs/c;->k:Z

    iput-boolean v3, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->readable:Z

    iget-boolean v3, v2, Lcom/estrongs/fs/c;->l:Z

    iput-boolean v3, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->writable:Z

    iget-boolean v2, v2, Lcom/estrongs/fs/c;->m:Z

    iput-boolean v2, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->hidden:Z

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/estrongs/fs/c;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4, p1}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->getFileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/android/pop/netfs/NetFileInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;J)Ljava/io/InputStream;
    .locals 7

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "yandex"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, p1, p2, v2}, Lcom/estrongs/fs/impl/r/b;->a(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->getFileInputStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v4, v1, v0}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->createShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "yandex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v1}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v2}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v1, v2}, Lcom/estrongs/fs/impl/r/b;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v3}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v4, v1, v2}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;
    .locals 4

    const/4 v2, 0x0

    sget-object v0, Lcom/estrongs/fs/impl/j/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/netfs/INetFileSystem;

    sget-object v1, Lcom/estrongs/fs/impl/j/b;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez v0, :cond_0

    invoke-static {p0, p1, v2}, Lcom/estrongs/android/util/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3, v1, v2}, Lcom/estrongs/android/util/h;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/netfs/INetFileSystem;

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    sget-object v1, Lcom/estrongs/fs/impl/j/b;->d:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/estrongs/fs/impl/j/b;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/estrongs/fs/impl/j/b;->b:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/fs/impl/j/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->setConfigDir(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "pcs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static d(Ljava/lang/String;Z)Lcom/estrongs/fs/impl/j/a;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/estrongs/fs/impl/j/b;->c(Ljava/lang/String;Z)Lcom/estrongs/android/pop/netfs/NetFileInfo;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/estrongs/fs/impl/j/a;

    invoke-direct {v1, v2}, Lcom/estrongs/fs/impl/j/a;-><init>(Lcom/estrongs/android/pop/netfs/NetFileInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->removeShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "yandex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v1}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v2}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3, v1, v2}, Lcom/estrongs/fs/impl/r/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v3}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v4, v1, v2}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/estrongs/fs/impl/j/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "yandex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v1}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v2}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v1, v2}, Lcom/estrongs/fs/impl/r/b;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v3}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v4, v1, v2}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->moveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/NetFileInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/estrongs/fs/impl/j/b;->c(Ljava/lang/String;Z)Lcom/estrongs/android/pop/netfs/NetFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1, p1}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->getUserLoginName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Lcom/estrongs/fs/c;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yandex"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Lcom/estrongs/fs/impl/r/b;->a(Ljava/lang/String;Z)Lcom/estrongs/fs/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->f(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/NetFileInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->a(Lcom/estrongs/android/pop/netfs/NetFileInfo;)Lcom/estrongs/fs/c;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/j/b;->g(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, v0, Lcom/estrongs/fs/c;->e:J

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yandex"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcom/estrongs/fs/impl/r/b;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v2}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v3, v1}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->isDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static k(Ljava/lang/String;)[J
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    instance-of v3, v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    invoke-static {v2}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static l(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yandex"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v2}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v4, v1}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->getThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static m(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "s3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/estrongs/fs/impl/j/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "yandex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/util/am;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->delServer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "onedrive"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v3, "cn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "zh_cn"

    :cond_1
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->setPrivateContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_2
    invoke-interface {v2}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->getOAuthLoginUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v3, "tw"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "zh_tw"

    goto :goto_1

    :cond_4
    const-string v1, "kanbox"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v3, "cn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "zh"

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->setPrivateContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    :try_start_1
    const-string v1, "en"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public static o(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->aB(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v1}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "dropbox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "onedrive"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gdrive"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "box"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/am;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
