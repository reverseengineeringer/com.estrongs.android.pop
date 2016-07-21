.class public Lcom/estrongs/fs/w;
.super Ljava/lang/Object;


# static fields
.field public static A:Lcom/estrongs/fs/w;

.field public static B:Lcom/estrongs/fs/w;

.field public static C:Lcom/estrongs/fs/w;

.field public static D:Lcom/estrongs/fs/w;

.field public static E:Lcom/estrongs/fs/w;

.field public static F:Lcom/estrongs/fs/w;

.field public static G:Lcom/estrongs/fs/w;

.field public static H:Lcom/estrongs/fs/w;

.field public static I:Lcom/estrongs/fs/w;

.field public static J:Lcom/estrongs/fs/w;

.field public static K:Lcom/estrongs/fs/w;

.field public static L:Lcom/estrongs/fs/w;

.field public static M:Lcom/estrongs/fs/w;

.field public static N:Lcom/estrongs/fs/w;

.field public static O:Lcom/estrongs/fs/w;

.field public static P:Lcom/estrongs/fs/w;

.field public static Q:Lcom/estrongs/fs/w;

.field public static R:Lcom/estrongs/fs/w;

.field public static S:Lcom/estrongs/fs/w;

.field public static a:Lcom/estrongs/fs/w;

.field public static b:Lcom/estrongs/fs/w;

.field public static c:Lcom/estrongs/fs/w;

.field public static d:Lcom/estrongs/fs/w;

.field public static e:Lcom/estrongs/fs/w;

.field public static f:Lcom/estrongs/fs/w;

.field public static g:Lcom/estrongs/fs/w;

.field public static h:Lcom/estrongs/fs/w;

.field public static i:Lcom/estrongs/fs/w;

.field public static j:Lcom/estrongs/fs/w;

.field public static k:Lcom/estrongs/fs/w;

.field public static l:Lcom/estrongs/fs/w;

.field public static m:Lcom/estrongs/fs/w;

.field public static n:Lcom/estrongs/fs/w;

.field public static o:Lcom/estrongs/fs/w;

.field public static p:Lcom/estrongs/fs/w;

.field public static q:Lcom/estrongs/fs/w;

.field public static r:Lcom/estrongs/fs/w;

.field public static s:Lcom/estrongs/fs/w;

.field public static t:Lcom/estrongs/fs/w;

.field public static u:Lcom/estrongs/fs/w;

.field public static v:Lcom/estrongs/fs/w;

.field public static w:Lcom/estrongs/fs/w;

.field public static x:Lcom/estrongs/fs/w;

.field public static y:Lcom/estrongs/fs/w;

.field public static z:Lcom/estrongs/fs/w;


# instance fields
.field private final T:Ljava/lang/String;

.field private U:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "folder"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "file"

    invoke-direct {v0, v1, v3}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->b:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "smb_server"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->c:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "ftp_server"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->d:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "sftp_server"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->e:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "ftps_server"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->f:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "webdav_server"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->g:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "webdavs_server"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->h:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "bt_server_bonded_pc"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->i:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "bt_server_pc"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->j:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "bt_server_bonded_phone"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->k:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "bt_server_phone"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->l:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "bt_server_bonded_other"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->m:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "bt_server_other"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->n:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "folder_shared"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->o:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "netdisk_server"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->p:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "netdisk_server_pcs"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->q:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "netdisk_server_sugarsync"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->r:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "netdisk_server_dropbox"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->s:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "netdisk_server_boxnet"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->t:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "netdisk_server_kuaipan"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->u:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "netdisk_server_vdisk"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->v:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "netdisk_server_skydrv"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->w:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "netdisk_server_gdrive"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->x:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "netdisk_server_s3"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->y:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "netdisk_server_megacloud"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->z:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "netdisk_server_yandex"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->A:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "netdisk_server_mediafire"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->B:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "netdisk_folder"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->C:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "pcs_folder"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->D:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "netdisk_folder_photo"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->E:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "netdisk_folder_other"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->F:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "sp_server_flickr"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->G:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "sp_server_instagram"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->H:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "sp_server_facebook"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->I:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "sp_server_pcs"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->J:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "create_site"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->K:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v3}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->L:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "flashair-server"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->M:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "adb_server"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->N:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "adb_folder"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->O:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "pcs_formal_folder"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->P:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "pcs_provisional_folder"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->Q:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "pcs_provisional_active_folder"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->R:Lcom/estrongs/fs/w;

    new-instance v0, Lcom/estrongs/fs/w;

    const-string v1, "pcs_res_folder"

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/estrongs/fs/w;->S:Lcom/estrongs/fs/w;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/fs/w;->T:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/estrongs/fs/w;->U:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/estrongs/fs/w;
    .locals 1

    const-string v0, "pcs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/w;->q:Lcom/estrongs/fs/w;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "sugarsync"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/fs/w;->r:Lcom/estrongs/fs/w;

    goto :goto_0

    :cond_1
    const-string v0, "dropbox"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/fs/w;->s:Lcom/estrongs/fs/w;

    goto :goto_0

    :cond_2
    const-string v0, "box"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/estrongs/fs/w;->t:Lcom/estrongs/fs/w;

    goto :goto_0

    :cond_3
    const-string v0, "kuaipan"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/estrongs/fs/w;->u:Lcom/estrongs/fs/w;

    goto :goto_0

    :cond_4
    const-string v0, "vdisk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/estrongs/fs/w;->v:Lcom/estrongs/fs/w;

    goto :goto_0

    :cond_5
    const-string v0, "onedrive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/estrongs/fs/w;->w:Lcom/estrongs/fs/w;

    goto :goto_0

    :cond_6
    const-string v0, "gdrive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/estrongs/fs/w;->x:Lcom/estrongs/fs/w;

    goto :goto_0

    :cond_7
    const-string v0, "s3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/estrongs/fs/w;->y:Lcom/estrongs/fs/w;

    goto :goto_0

    :cond_8
    const-string v0, "yandex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/estrongs/fs/w;->A:Lcom/estrongs/fs/w;

    goto :goto_0

    :cond_9
    const-string v0, "megacloud"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/estrongs/fs/w;->z:Lcom/estrongs/fs/w;

    goto :goto_0

    :cond_a
    const-string v0, "mediafire"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/estrongs/fs/w;->B:Lcom/estrongs/fs/w;

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/estrongs/fs/w;
    .locals 1

    const-string v0, "Flickr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/w;->G:Lcom/estrongs/fs/w;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Instagram"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/fs/w;->H:Lcom/estrongs/fs/w;

    goto :goto_0

    :cond_1
    const-string v0, "Facebook"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/fs/w;->I:Lcom/estrongs/fs/w;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Lcom/estrongs/fs/w;
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/estrongs/fs/w;->L:Lcom/estrongs/fs/w;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/estrongs/fs/w;->D:Lcom/estrongs/fs/w;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/estrongs/fs/w;->C:Lcom/estrongs/fs/w;

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/w;->U:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/w;->U:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/w;->T:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/estrongs/fs/w;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/estrongs/fs/w;

    iget-object v1, p0, Lcom/estrongs/fs/w;->T:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/fs/w;->T:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/w;->T:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/w;->T:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/w;->T:Ljava/lang/String;

    return-object v0
.end method
