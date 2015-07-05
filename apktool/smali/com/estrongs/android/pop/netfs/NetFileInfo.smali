.class public Lcom/estrongs/android/pop/netfs/NetFileInfo;
.super Ljava/lang/Object;


# static fields
.field public static final FOLDER_TYPE_DEVICE:I = 0x1

.field public static final FOLDER_TYPE_FOLDER:I = 0x0

.field public static final FOLDER_TYPE_RECV_SHARED:I = 0x8

.field public static final FOLDER_TYPE_SHARED:I = 0x40

.field public static final FOLDER_TYPE_VIRTUAL:I = 0x20

.field public static final FOLDER_TYPE_VIRTUAL_ARCHIVE:I = 0x10

.field public static final FOLDER_TYPE_VIRTUAL_BFCASE:I = 0x2

.field public static final FOLDER_TYPE_VIRTUAL_PHOTO:I = 0x4

.field public static final INTENT_FILE_URL:Ljava/lang/String; = "intent_file_url"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final PUBLIC_SHARE:Ljava/lang/String; = "public_share_link"

.field public static final WEB_FILE_URL:Ljava/lang/String; = "web_file_url"


# instance fields
.field public createdTime:J

.field private extras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public folder_type:I

.field public hidden:Z

.field public isDirectory:Z

.field public lastAccessTime:J

.field public lastModifiedTime:J

.field public md5_block_size:I

.field public md5s:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public readable:Z

.field public size:J

.field public version:I

.field public writable:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->version:I

    iput-object v4, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iput-object v4, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->path:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->isDirectory:Z

    iput-wide v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->size:J

    iput-wide v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->createdTime:J

    iput-wide v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->lastAccessTime:J

    iput-wide v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->lastModifiedTime:J

    iput-boolean v3, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->readable:Z

    iput-boolean v3, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->writable:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->hidden:Z

    iput v2, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->folder_type:I

    iput-object v4, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->md5s:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->md5_block_size:I

    return-void
.end method


# virtual methods
.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->extras:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->extras:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->extras:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->extras:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->extras:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
