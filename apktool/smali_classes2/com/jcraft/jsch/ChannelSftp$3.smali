.class Lcom/jcraft/jsch/ChannelSftp$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;


# instance fields
.field final synthetic a:Lcom/jcraft/jsch/ChannelSftp;

.field private final synthetic b:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$3;->a:Lcom/jcraft/jsch/ChannelSftp;

    iput-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$3;->b:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)I
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$3;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method
