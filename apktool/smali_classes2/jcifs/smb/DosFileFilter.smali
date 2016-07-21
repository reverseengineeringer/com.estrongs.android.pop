.class public Ljcifs/smb/DosFileFilter;
.super Ljava/lang/Object;

# interfaces
.implements Ljcifs/smb/SmbFileFilter;


# instance fields
.field protected attributes:I

.field protected wildcard:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljcifs/smb/DosFileFilter;->wildcard:Ljava/lang/String;

    iput p2, p0, Ljcifs/smb/DosFileFilter;->attributes:I

    return-void
.end method


# virtual methods
.method public accept(Ljcifs/smb/SmbFile;)Z
    .locals 2

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getAttributes()I

    move-result v0

    iget v1, p0, Ljcifs/smb/DosFileFilter;->attributes:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
