.class public Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem$SFTPFileWrapper;
.super Ljava/io/File;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field attr:Lcom/jcraft/jsch/SftpATTRS;

.field sftpFile:Lcom/jcraft/jsch/ChannelSftp$LsEntry;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)V
    .locals 1

    const-string v0, "/sdcard"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem$SFTPFileWrapper;->attr:Lcom/jcraft/jsch/SftpATTRS;

    iput-object p1, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem$SFTPFileWrapper;->sftpFile:Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-virtual {p1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->b()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem$SFTPFileWrapper;->attr:Lcom/jcraft/jsch/SftpATTRS;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem$SFTPFileWrapper;->sftpFile:Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem$SFTPFileWrapper;->attr:Lcom/jcraft/jsch/SftpATTRS;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem$SFTPFileWrapper;->attr:Lcom/jcraft/jsch/SftpATTRS;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public lastModified()J
    .locals 4

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem$SFTPFileWrapper;->attr:Lcom/jcraft/jsch/SftpATTRS;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->l()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem$SFTPFileWrapper;->attr:Lcom/jcraft/jsch/SftpATTRS;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->g()J

    move-result-wide v0

    return-wide v0
.end method
