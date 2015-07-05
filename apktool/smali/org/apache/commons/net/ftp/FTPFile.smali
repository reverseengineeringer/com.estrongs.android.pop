.class public Lorg/apache/commons/net/ftp/FTPFile;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DIRECTORY_TYPE:I = 0x1

.field public static final EXECUTE_PERMISSION:I = 0x2

.field public static final FILE_TYPE:I = 0x0

.field public static final GROUP_ACCESS:I = 0x1

.field public static final READ_PERMISSION:I = 0x0

.field public static final SYMBOLIC_LINK_TYPE:I = 0x2

.field public static final UNKNOWN_TYPE:I = 0x3

.field public static final USER_ACCESS:I = 0x0

.field public static final WORLD_ACCESS:I = 0x2

.field public static final WRITE_PERMISSION:I = 0x1

.field private static final serialVersionUID:J = 0x7d0cc2180c52bb3cL


# instance fields
.field private _date:Ljava/util/Calendar;

.field private _group:Ljava/lang/String;

.field private _hardLinkCount:I

.field private _link:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private _permissions:[[Z

.field private _rawListing:Ljava/lang/String;

.field private _size:J

.field private _type:I

.field private _user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {v2, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_permissions:[[Z

    iput-object v3, p0, Lorg/apache/commons/net/ftp/FTPFile;->_rawListing:Ljava/lang/String;

    iput v2, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_hardLinkCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_size:J

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_user:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_group:Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/commons/net/ftp/FTPFile;->_date:Ljava/util/Calendar;

    iput-object v3, p0, Lorg/apache/commons/net/ftp/FTPFile;->_name:Ljava/lang/String;

    return-void
.end method

.method private formatType()C
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x3f

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x2d

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x64

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x6c

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private permissionToString(I)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_group:Ljava/lang/String;

    return-object v0
.end method

.method public getHardLinkCount()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_hardLinkCount:I

    return v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRawListing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_rawListing:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_size:J

    return-wide v0
.end method

.method public getTimestamp()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_date:Ljava/util/Calendar;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    return v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_user:Ljava/lang/String;

    return-object v0
.end method

.method public hasPermission(II)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_permissions:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFile()Z
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbolicLink()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnknown()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_group:Ljava/lang/String;

    return-void
.end method

.method public setHardLinkCount(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_hardLinkCount:I

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_link:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_name:Ljava/lang/String;

    return-void
.end method

.method public setPermission(IIZ)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_permissions:[[Z

    aget-object v0, v0, p1

    aput-boolean p3, v0, p2

    return-void
.end method

.method public setRawListing(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_rawListing:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 1

    iput-wide p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_size:J

    return-void
.end method

.method public setTimestamp(Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_date:Ljava/util/Calendar;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_user:Ljava/lang/String;

    return-void
.end method

.method public toFormattedString()Ljava/lang/String;
    .locals 9

    const/16 v8, 0x20

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFile;->formatType()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Lorg/apache/commons/net/ftp/FTPFile;->permissionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/FTPFile;->permissionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lorg/apache/commons/net/ftp/FTPFile;->permissionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " %4d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getHardLinkCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const-string v2, " %-8s %-8s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getGroup()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getUser()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const-string v2, " %8d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, " %1$tY-%1$tm-%1$td %1$tH:%1$tM:%1$tS"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const-string v3, " %1$tZ"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getRawListing()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
