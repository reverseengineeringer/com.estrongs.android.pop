.class public final enum Lcom/dropbox/client2/DropboxAPI$ThumbSize;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/client2/DropboxAPI$ThumbSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BESTFIT_1024x768:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

.field public static final enum BESTFIT_320x240:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

.field public static final enum BESTFIT_480x320:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

.field public static final enum BESTFIT_640x480:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

.field public static final enum BESTFIT_960x640:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

.field private static final synthetic ENUM$VALUES:[Lcom/dropbox/client2/DropboxAPI$ThumbSize;

.field public static final enum ICON_128x128:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

.field public static final enum ICON_256x256:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

.field public static final enum ICON_32x32:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

.field public static final enum ICON_64x64:Lcom/dropbox/client2/DropboxAPI$ThumbSize;


# instance fields
.field private size:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    const-string v1, "ICON_32x32"

    const-string v2, "small"

    invoke-direct {v0, v1, v4, v2}, Lcom/dropbox/client2/DropboxAPI$ThumbSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->ICON_32x32:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    new-instance v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    const-string v1, "ICON_64x64"

    const-string v2, "medium"

    invoke-direct {v0, v1, v5, v2}, Lcom/dropbox/client2/DropboxAPI$ThumbSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->ICON_64x64:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    new-instance v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    const-string v1, "ICON_128x128"

    const-string v2, "large"

    invoke-direct {v0, v1, v6, v2}, Lcom/dropbox/client2/DropboxAPI$ThumbSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->ICON_128x128:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    new-instance v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    const-string v1, "ICON_256x256"

    const-string v2, "256x256"

    invoke-direct {v0, v1, v7, v2}, Lcom/dropbox/client2/DropboxAPI$ThumbSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->ICON_256x256:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    new-instance v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    const-string v1, "BESTFIT_320x240"

    const-string v2, "320x240_bestfit"

    invoke-direct {v0, v1, v8, v2}, Lcom/dropbox/client2/DropboxAPI$ThumbSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->BESTFIT_320x240:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    new-instance v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    const-string v1, "BESTFIT_480x320"

    const/4 v2, 0x5

    const-string v3, "480x320_bestfit"

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/client2/DropboxAPI$ThumbSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->BESTFIT_480x320:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    new-instance v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    const-string v1, "BESTFIT_640x480"

    const/4 v2, 0x6

    const-string v3, "640x480_bestfit"

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/client2/DropboxAPI$ThumbSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->BESTFIT_640x480:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    new-instance v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    const-string v1, "BESTFIT_960x640"

    const/4 v2, 0x7

    const-string v3, "960x640_bestfit"

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/client2/DropboxAPI$ThumbSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->BESTFIT_960x640:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    new-instance v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    const-string v1, "BESTFIT_1024x768"

    const/16 v2, 0x8

    const-string v3, "1024x768_bestfit"

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/client2/DropboxAPI$ThumbSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->BESTFIT_1024x768:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    sget-object v1, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->ICON_32x32:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->ICON_64x64:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->ICON_128x128:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->ICON_256x256:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->BESTFIT_320x240:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->BESTFIT_480x320:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->BESTFIT_640x480:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->BESTFIT_960x640:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->BESTFIT_1024x768:Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->ENUM$VALUES:[Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->size:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/client2/DropboxAPI$ThumbSize;
    .locals 1

    const-class v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/client2/DropboxAPI$ThumbSize;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->ENUM$VALUES:[Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    array-length v1, v0

    new-array v2, v1, [Lcom/dropbox/client2/DropboxAPI$ThumbSize;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toAPISize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$ThumbSize;->size:Ljava/lang/String;

    return-object v0
.end method
