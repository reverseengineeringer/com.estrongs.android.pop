.class public Lcom/estrongs/bluetooth/parser/OBEXDateFormatter;
.super Ljava/text/SimpleDateFormat;


# static fields
.field private static final serialVersionUID:J = 0x2ab7a355bb3e08aaL


# instance fields
.field private isoFormatter:Ljava/text/DateFormat;

.field private utcFormatter:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/text/SimpleDateFormat;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXDateFormatter;->isoFormatter:Ljava/text/DateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXDateFormatter;->utcFormatter:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXDateFormatter;->utcFormatter:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Z"

    const-string v1, "UTC"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXDateFormatter;->utcFormatter:Ljava/text/DateFormat;

    :goto_1
    invoke-virtual {v0, p1}, Ljava/text/Format;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXDateFormatter;->isoFormatter:Ljava/text/DateFormat;

    goto :goto_1
.end method
