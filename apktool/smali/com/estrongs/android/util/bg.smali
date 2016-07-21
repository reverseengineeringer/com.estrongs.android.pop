.class public Lcom/estrongs/android/util/bg;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field private static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/16 v6, 0x64

    const/4 v5, 0x2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/bg;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/bg;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/bg;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/bg;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/bg;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/bg;->i:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/bg;->j:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/bg;->k:Landroid/util/SparseArray;

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    const-string v1, "bmp"

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x10000

    const-string v2, ".apk"

    const-string v3, "application/vnd.android.package-archive"

    invoke-static {v1, v2, v3, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v1, 0x10001

    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ".txt"

    aput-object v3, v2, v9

    const-string v3, ".text"

    aput-object v3, v2, v7

    const-string v3, ".ini"

    aput-object v3, v2, v5

    const-string v3, ".properties"

    aput-object v3, v2, v8

    const/4 v3, 0x4

    const-string v4, ".prop"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, ".conf"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ".classpath"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, ".project"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, ".php"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ".js"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ".rss"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, ".jsp"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, ".asp"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, ".aspx"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, ".c"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, ".java"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, ".vb"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, ".vbs"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, ".h"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, ".checksum"

    aput-object v4, v2, v3

    const-string v3, "text/plain"

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v4}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v1, 0x10010

    const-string v2, ".png"

    const-string v3, "image/png"

    invoke-static {v1, v2, v3, v7}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v1, 0x10011

    const-string v2, ".jpg"

    const-string v3, "image/jpeg"

    invoke-static {v1, v2, v3, v7}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v1, 0x10012

    const-string v2, ".bmp"

    if-nez v0, :cond_0

    const-string v0, "image/bmp"

    :cond_0
    invoke-static {v1, v2, v0, v7}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x10013

    const-string v1, ".gif"

    const-string v2, "image/gif"

    invoke-static {v0, v1, v2, v7}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x10014

    const-string v1, ".jpeg"

    const-string v2, "image/jpeg"

    invoke-static {v0, v1, v2, v7}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x10015

    const-string v1, ".wbmp"

    const-string v2, "image/vnd.wap.wbmp"

    invoke-static {v0, v1, v2, v7}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x10016

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, ".tif"

    aput-object v2, v1, v9

    const-string v2, ".tiff"

    aput-object v2, v1, v7

    const-string v2, "image/tif"

    invoke-static {v0, v1, v2, v7}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x20020

    const-string v1, ".mp3"

    const-string v2, "audio/mpeg"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x20021

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, ".mid"

    aput-object v2, v1, v9

    const-string v2, ".midi"

    aput-object v2, v1, v7

    const-string v2, ".rmi"

    aput-object v2, v1, v5

    const-string v2, "audio/mid"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x20022

    const-string v1, ".wav"

    const-string v2, "audio/x-wav"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x20023

    const-string v1, ".amr"

    const-string v2, "audio/amr"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x20024

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, ".ogg"

    aput-object v2, v1, v9

    const-string v2, ".x-ogg"

    aput-object v2, v1, v7

    const-string v2, "audio/ogg"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x20025

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, ".m4a"

    aput-object v2, v1, v9

    const-string v2, "audio/mp4"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x20026

    const-string v1, ".wma"

    const-string v2, "audio/x-ms-wma"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x20027

    const-string v1, ".qcp"

    const-string v2, "audio/vnd.qcelp"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x20028

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, ".ra"

    aput-object v2, v1, v9

    const-string v2, ".ram"

    aput-object v2, v1, v7

    const-string v2, "audio/x-pn-realaudio"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x20029

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, ".aif"

    aput-object v2, v1, v9

    const-string v2, ".aifc"

    aput-object v2, v1, v7

    const-string v2, ".aiff"

    aput-object v2, v1, v5

    const-string v2, "audio/x-aiff"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x2002a

    const-string v1, ".m3u"

    const-string v2, "audio/x-mpegurl"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x2002b

    const-string v1, ".flac"

    const-string v2, "audio/flac"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x2002c

    const-string v1, ".ape"

    const-string v2, "audio/x-ape"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x2002d

    const-string v1, ".oga"

    const-string v2, "audio/ogg"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x2002e

    const-string v1, ".ac3"

    const-string v2, "audio/ac3"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x2002f

    const-string v1, ".awb"

    const-string v2, "audio/amr-wb"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x20030

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, ".mp2"

    aput-object v2, v1, v9

    const-string v2, ".mpga"

    aput-object v2, v1, v7

    const-string v2, "audio/mpeg"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x20031

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, ".3gpa"

    aput-object v2, v1, v9

    const-string v2, ".3ga"

    aput-object v2, v1, v7

    const-string v2, "audio/3ga"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x20032

    const-string v1, ".imy"

    const-string v2, "audio/imelod"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x20033

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, ".aac"

    aput-object v2, v1, v9

    const-string v2, "audio/aac"

    invoke-static {v0, v1, v2, v5}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x30027

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, ".asf"

    aput-object v2, v1, v9

    const-string v2, ".asx"

    aput-object v2, v1, v7

    const-string v2, "video/x-ms-asf"

    invoke-static {v0, v1, v2, v8}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x30028

    const-string v1, ".wmv"

    const-string v2, "video/x-ms-wmv"

    invoke-static {v0, v1, v2, v8}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x30029

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ".rm"

    aput-object v2, v1, v9

    const-string v2, ".rmvb"

    aput-object v2, v1, v7

    const-string v2, ".mkv"

    aput-object v2, v1, v5

    const-string v2, ".mov"

    aput-object v2, v1, v8

    const-string v2, "video/*"

    invoke-static {v0, v1, v2, v8}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x3002a

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, ".3gp"

    aput-object v2, v1, v9

    const-string v2, ".3gpp"

    aput-object v2, v1, v7

    const-string v2, "video/3gpp"

    invoke-static {v0, v1, v2, v8}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x3002b

    const-string v1, ".avi"

    const-string v2, "video/avi"

    invoke-static {v0, v1, v2, v8}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x3002c

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, ".mp4"

    aput-object v2, v1, v9

    const-string v2, ".m4v"

    aput-object v2, v1, v7

    const-string v2, ".f4v"

    aput-object v2, v1, v5

    const-string v2, "video/mp4"

    invoke-static {v0, v1, v2, v8}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x3002d

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, ".mpg"

    aput-object v2, v1, v9

    const-string v2, ".ts"

    aput-object v2, v1, v7

    const-string v2, "video/mpeg"

    invoke-static {v0, v1, v2, v8}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x3002e

    const-string v1, ".mpeg"

    const-string v2, "video/mpeg"

    invoke-static {v0, v1, v2, v8}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x30030

    const-string v1, ".flv"

    const-string v2, "application/x-shockwave-flash"

    invoke-static {v0, v1, v2, v8}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x30032

    const-string v1, ".vob"

    const-string v2, "application/octet-stream"

    invoke-static {v0, v1, v2, v8}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x30033

    const-string v1, ".webm"

    const-string v2, "video/webm"

    invoke-static {v0, v1, v2, v8}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x30034

    const-string v1, ".ogv"

    const-string v2, "video/ogg"

    invoke-static {v0, v1, v2, v8}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x30035

    const-string v1, ".3g2"

    const-string v2, "video/3gpp2"

    invoke-static {v0, v1, v2, v8}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x30036

    const-string v1, ".m2ts"

    const-string v2, "video/mpeg"

    invoke-static {v0, v1, v2, v8}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x30037

    const-string v1, ".trp"

    const-string v2, "video/*"

    invoke-static {v0, v1, v2, v8}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x30038

    const-string v1, ".mts"

    const-string v2, "video/avchd-stream"

    invoke-static {v0, v1, v2, v8}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x30039

    const-string v1, ".divx"

    const-string v2, "video/divx"

    invoke-static {v0, v1, v2, v8}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x70001

    const-string v1, ".swf"

    const-string v2, "application/x-shockwave-flash"

    invoke-static {v0, v1, v2, v8}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x40030

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, ".doc"

    aput-object v2, v1, v9

    const-string v2, ".docx"

    aput-object v2, v1, v7

    const-string v2, ".docm"

    aput-object v2, v1, v5

    const-string v2, "application/msword"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x40031

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ".xls"

    aput-object v2, v1, v9

    const-string v2, ".xlsx"

    aput-object v2, v1, v7

    const-string v2, ".xla"

    aput-object v2, v1, v5

    const-string v2, ".xlc"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, ".xlm"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, ".xlt"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ".xlsm"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, ".xlsb"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, ".ods"

    aput-object v3, v1, v2

    const-string v2, "application/vnd.ms-excel"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x40032

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, ".html"

    aput-object v2, v1, v9

    const-string v2, ".htm"

    aput-object v2, v1, v7

    const-string v2, ".mht"

    aput-object v2, v1, v5

    const-string v2, "text/html"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x40050

    const-string v1, ".wps"

    const-string v2, "application/wps"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x40051

    const-string v1, ".wpt"

    const-string v2, "application/wpt"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x40052

    const-string v1, ".dps"

    const-string v2, "application/dps"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x40053

    const-string v1, ".dpt"

    const-string v2, "application/dpt"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x40054

    const-string v1, ".et"

    const-string v2, "application/et"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x40055

    const-string v1, ".ett"

    const-string v2, "application/ett"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x40033

    const-string v1, ".bat"

    const-string v2, "magnus-internal/cgi"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x40034

    const-string v1, ".exe"

    const-string v2, "magnus-internal/cgi"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x40035

    const-string v1, ".dll"

    const-string v2, "application/x-msdownload"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x40036

    const-string v1, ".lib"

    const-string v2, "application/octet-stream"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x40037

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ".ppt"

    aput-object v2, v1, v9

    const-string v2, ".pps"

    aput-object v2, v1, v7

    const-string v2, ".ppx"

    aput-object v2, v1, v5

    const-string v2, ".pptx"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, ".odp"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, ".ppsm"

    aput-object v3, v1, v2

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x40040

    const-string v1, ".chm"

    const-string v2, "application/x-chm"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x4003b

    const-string v1, ".esj"

    const-string v2, "application/esj"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x4003c

    const-string v1, ".epub"

    const-string v2, "application/epub+zip"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x50042

    const-string v1, ".7z"

    const-string v2, "application/x-7z-compressed"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x50038

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ".zip"

    aput-object v2, v1, v9

    const-string v2, ".tar"

    aput-object v2, v1, v7

    const-string v2, ".gz"

    aput-object v2, v1, v5

    const-string v2, ".cab"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, ".esi"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, ".7z"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ".jar"

    aput-object v3, v1, v2

    const-string v2, "application/zip"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x50039

    const-string v1, ".pdf"

    const-string v2, "application/pdf"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x5003a

    const-string v1, ".xml"

    const-string v2, "text/xml"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x5003d

    const-string v1, ".odt"

    const-string v2, "application/vnd.oasis.opendocument.text"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x5003f

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, ".pgn"

    aput-object v2, v1, v9

    const-string v2, ".xqf"

    aput-object v2, v1, v7

    const-string v2, "application/x-chess-pgn"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x50040

    const-string v1, ".rar"

    const-string v2, "application/x-rar-compressed"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x50041

    const-string v1, ".gzip"

    const-string v2, "application/x-gzip"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x50043

    const-string v1, ".tar"

    const-string v2, "application/x-tar"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x50044

    const-string v1, ".bz2"

    const-string v2, "application/x-bzip2"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x50045

    const-string v1, ".cab"

    const-string v2, "application/vnd.ms-cab-compressed"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x6004b

    const-string v1, ".torrent"

    const-string v2, "application/x-bittorrent"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x6004c

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, ".mobi"

    aput-object v2, v1, v9

    const-string v2, ".prc"

    aput-object v2, v1, v7

    const-string v2, "application/x-mobipocket-ebook"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x1004c

    const-string v1, ".vcf"

    const-string v2, "text/x-vcard"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x1004d

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, ".ics"

    aput-object v2, v1, v9

    const-string v2, ".ical"

    aput-object v2, v1, v7

    const-string v2, ".icalendar"

    aput-object v2, v1, v5

    const-string v2, "text/calendar"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0x80001

    const-string v1, ".nzb"

    const-string v2, "application/x-nzb"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x80002

    const-string v1, ".umd"

    const-string v2, "application/umd"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x90001

    const-string v1, ".pcs"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x90010

    const-string v1, ".eslock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x91000

    const-string v1, ".ods"

    const-string v2, "application/vnd.oasis.opendocument.spreadsheet"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x91001

    const-string v1, ".odp"

    const-string v2, "application/vnd.oasis.opendocument.presentation"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x92000

    const-string v1, ".fb2"

    const-string v2, "application/fb2"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x92001    # 8.38E-40f

    const-string v1, ".azw"

    const-string v2, "application/vnd.amazon.ebook"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x92002

    const-string v1, ".azw1"

    const-string v2, "application/x-topaz-ebook"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x92003

    const-string v1, ".azw3"

    const-string v2, "application/x-mobipocket-ebook"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x92004

    const-string v1, ".azw4"

    const-string v2, "application/umd"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x92004

    const-string v1, ".ebk"

    const-string v2, "application/umd"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x80004

    const-string v1, ".ebk2"

    const-string v2, "application/umd"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x80005

    const-string v1, ".ebk3"

    const-string v2, "application/umd"

    invoke-static {v0, v1, v2, v6}, Lcom/estrongs/android/util/bg;->a(ILjava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/bg;->g:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/bg;->l:Ljava/lang/String;

    return-void
.end method

.method public static final A(I)Z
    .locals 1

    const v0, 0x40032

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final A(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->s(I)Z

    move-result v0

    return v0
.end method

.method public static final B(I)Z
    .locals 1

    const v0, 0x40037

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final B(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->t(I)Z

    move-result v0

    return v0
.end method

.method public static final C(I)Z
    .locals 1

    const v0, 0x5003a

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final C(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->x(I)Z

    move-result v0

    return v0
.end method

.method public static final D(I)Z
    .locals 1

    const v0, 0x1004d

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final D(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->y(I)Z

    move-result v0

    return v0
.end method

.method public static final E(I)Z
    .locals 1

    const v0, 0x20027

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final E(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->z(I)Z

    move-result v0

    return v0
.end method

.method public static final F(I)Z
    .locals 1

    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final F(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->A(I)Z

    move-result v0

    return v0
.end method

.method public static final G(I)Z
    .locals 1

    const v0, 0x90011

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final G(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->B(I)Z

    move-result v0

    return v0
.end method

.method public static H(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/util/bg;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final H(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->C(I)Z

    move-result v0

    return v0
.end method

.method public static final I(I)Z
    .locals 1

    const v0, 0x90010

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final I(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->D(I)Z

    move-result v0

    return v0
.end method

.method public static final J(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->E(I)Z

    move-result v0

    return v0
.end method

.method public static final K(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->F(I)Z

    move-result v0

    return v0
.end method

.method public static final L(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->G(I)Z

    move-result v0

    return v0
.end method

.method public static final M(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final N(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->M(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".gz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".rar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final O(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pcs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final P(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/util/bg;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final Q(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/util/bg;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final R(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "rm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "rmvb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".mpg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".mpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".asf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".flv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".f4v"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static S(Ljava/lang/String;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".eslock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static T(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "application/zip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/x-zip-compressed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ".zip"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "application/x-gzip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".gz"

    goto :goto_0

    :cond_2
    const-string v0, "application/x-rar-compressed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "application/rar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, ".rar"

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static U(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_1

    const-string v0, "*/*"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->H(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/fs/util/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_0

    :cond_3
    const-string v0, "*/*"

    goto :goto_0
.end method

.method public static final a(Lcom/estrongs/fs/h;)I
    .locals 2

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getESFileType()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x10011

    :goto_0
    invoke-interface {p0, v0}, Lcom/estrongs/fs/h;->setESFileType(I)V

    :cond_0
    return v0

    :cond_1
    instance-of v0, p0, Lcom/estrongs/fs/impl/adb/a;

    if-eqz v0, :cond_2

    const v0, 0x90011

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/estrongs/android/util/bg;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/bg;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final a()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/estrongs/android/util/bg;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/bg;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lcom/estrongs/android/util/bg;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/estrongs/android/util/bg;->j:Landroid/util/SparseArray;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/bg;->f:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/util/bg;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method private static final a(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, p2, p3}, Lcom/estrongs/android/util/bg;->a(I[Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static final a(I[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    if-eqz p2, :cond_0

    sget-object v0, Lcom/estrongs/android/util/bg;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/estrongs/android/util/bg;->i:Ljava/util/HashMap;

    aget-object v2, p1, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/util/bg;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    sget-object v0, Lcom/estrongs/android/util/bg;->b:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    sget-object v0, Lcom/estrongs/android/util/bg;->a:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    if-ne p3, v0, :cond_5

    sget-object v0, Lcom/estrongs/android/util/bg;->c:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/4 v0, 0x4

    if-ne p3, v0, :cond_6

    sget-object v0, Lcom/estrongs/android/util/bg;->d:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const/4 v0, 0x5

    if-ne p3, v0, :cond_2

    sget-object v0, Lcom/estrongs/android/util/bg;->e:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static final a(I)Z
    .locals 2

    sget-object v0, Lcom/estrongs/android/util/bg;->b:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final b(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->bR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/util/bg;->i:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/estrongs/android/util/bg;->i:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/util/ap;->O(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x90011

    goto :goto_0
.end method

.method public static final b()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/estrongs/android/util/bg;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/bg;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lcom/estrongs/android/util/bg;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/estrongs/android/util/bg;->j:Landroid/util/SparseArray;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/bg;->g:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/util/bg;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final b(I)Z
    .locals 1

    const v0, 0x10014

    if-eq p0, v0, :cond_0

    const v0, 0x10011

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final b(Lcom/estrongs/fs/h;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/w;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/w;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->a(Lcom/estrongs/fs/h;)I

    move-result v2

    invoke-static {v2}, Lcom/estrongs/android/util/bg;->a(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/bg;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static final c()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Lcom/estrongs/android/util/bg;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/ad;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/bg;->l:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/ad;->g(Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    if-lez v1, :cond_2

    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const/16 v0, 0x2e

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/bg;->l:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/ad;->b:Ljava/lang/Boolean;

    sget-object v0, Lcom/estrongs/android/util/bg;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final c(I)Z
    .locals 1

    const v0, 0x10010

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final c(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->a(I)Z

    move-result v0

    return v0
.end method

.method public static final d()Ljava/lang/String;
    .locals 1

    const-string v0, ".doc;.docx;.ppt;.pps;.ppx;.pptx;.odp;.xls;.xlsx;.xla;.xlc;.xlm;.xlt;.xlsm;.xlsb;.chm;.html;.htm;.txt;.pdf;.mobi;.rtf;.epub;.fb2"

    return-object v0
.end method

.method public static final d(I)Z
    .locals 2

    sget-object v0, Lcom/estrongs/android/util/bg;->a:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/bg;->c:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final d(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->b(I)Z

    move-result v0

    return v0
.end method

.method public static final e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string v1, ".zip;.rar;.tar;.gzip;.bz2;.gz;.7z;.esi;.cab;.jar"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final e(I)Z
    .locals 2

    sget-object v0, Lcom/estrongs/android/util/bg;->a:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final e(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->c(I)Z

    move-result v0

    return v0
.end method

.method public static final f()Ljava/lang/String;
    .locals 1

    const-string v0, ".eslock"

    return-object v0
.end method

.method public static final f(I)Z
    .locals 1

    const v0, 0x20020

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final f(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->d(I)Z

    move-result v0

    return v0
.end method

.method public static final g()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/estrongs/android/util/bg;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/bg;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lcom/estrongs/android/util/bg;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/estrongs/android/util/bg;->j:Landroid/util/SparseArray;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/bg;->h:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/util/bg;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final g(I)Z
    .locals 2

    sget-object v0, Lcom/estrongs/android/util/bg;->c:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final g(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->e(I)Z

    move-result v0

    return v0
.end method

.method public static final h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string v1, ".apk"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static h(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/util/bg;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "video/*"

    :cond_0
    return-object v0
.end method

.method public static final h(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->g(I)Z

    move-result v0

    return v0
.end method

.method public static final i()Ljava/lang/String;
    .locals 1

    const-string v0, ".eslock"

    return-object v0
.end method

.method public static i(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/util/bg;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "audio/*"

    :cond_0
    return-object v0
.end method

.method public static final i(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->j(I)Z

    move-result v0

    return v0
.end method

.method public static final j(I)Z
    .locals 2

    sget-object v0, Lcom/estrongs/android/util/bg;->d:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final j(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->k(I)Z

    move-result v0

    return v0
.end method

.method public static j()[Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/estrongs/android/util/bg;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/android/util/bg;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static final k(I)Z
    .locals 2

    sget-object v0, Lcom/estrongs/android/util/bg;->e:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final k(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->l(I)Z

    move-result v0

    return v0
.end method

.method public static k()[Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/estrongs/android/util/bg;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/android/util/bg;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static final l(I)Z
    .locals 1

    const v0, 0x70001

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final l(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final m(I)Z
    .locals 1

    const v0, 0x50039

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final m(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".7z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final n(I)Z
    .locals 1

    const v0, 0x4003b

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final n(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".rar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final o(I)Z
    .locals 1

    const v0, 0x4003c

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final o(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".7z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ".tar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ".bz2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ".cab"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final p(I)Z
    .locals 1

    const v0, 0x6004c

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final p(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".bz2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final q(I)Z
    .locals 1

    const v0, 0x6004b

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final q(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->m(I)Z

    move-result v0

    return v0
.end method

.method public static final r(I)Z
    .locals 1

    const v0, 0x5003f

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final r(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->n(I)Z

    move-result v0

    return v0
.end method

.method public static final s(I)Z
    .locals 1

    const v0, 0x80001

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final s(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->o(I)Z

    move-result v0

    return v0
.end method

.method public static final t(I)Z
    .locals 1

    const v0, 0x5003d

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final t(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->p(I)Z

    move-result v0

    return v0
.end method

.method public static final u(I)Z
    .locals 1

    const v0, 0x91001

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final u(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->q(I)Z

    move-result v0

    return v0
.end method

.method public static final v(I)Z
    .locals 1

    const v0, 0x91000

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final v(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    const v1, 0x80002

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final w(I)Z
    .locals 2

    const v1, 0x92004

    const v0, 0x92000

    if-eq p0, v0, :cond_0

    const v0, 0x92001    # 8.38E-40f

    if-eq p0, v0, :cond_0

    const v0, 0x92002

    if-eq p0, v0, :cond_0

    const v0, 0x92003

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v1, :cond_0

    const v0, 0x80004

    if-eq p0, v0, :cond_0

    const v0, 0x80005

    if-eq p0, v0, :cond_0

    const v0, 0x80002

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final w(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    const v1, 0x80003

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final x(I)Z
    .locals 1

    const v0, 0x40030

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final x(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    const v1, 0x80004

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final y(I)Z
    .locals 1

    const v0, 0x40031

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final y(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    const v1, 0x80005

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final z(I)Z
    .locals 1

    const v0, 0x40040

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final z(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->r(I)Z

    move-result v0

    return v0
.end method
