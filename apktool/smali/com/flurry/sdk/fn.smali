.class public Lcom/flurry/sdk/fn;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/fn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/fn;->a:Ljava/lang/String;

    const/16 v0, 0x1f4

    sput v0, Lcom/flurry/sdk/fn;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()I
    .locals 1

    sget v0, Lcom/flurry/sdk/fn;->b:I

    return v0
.end method

.method static a(Ljava/lang/String;)I
    .locals 5

    const/4 v3, 0x3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "(\\d{2}):(\\d{2}):(\\d{2})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    mul-int/lit8 v1, v2, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v2, v3, 0x3c

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static a(Ljava/util/List;)Lcom/flurry/sdk/fz;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/fz;",
            ">;)",
            "Lcom/flurry/sdk/fz;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fz;

    invoke-virtual {v0}, Lcom/flurry/sdk/fz;->b()I

    move-result v3

    invoke-static {}, Lcom/flurry/sdk/fn;->a()I

    move-result v4

    if-gt v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/flurry/sdk/fz;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/flurry/sdk/fz;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/fz;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video/mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/flurry/sdk/fz;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    if-nez v1, :cond_3

    :cond_2
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/flurry/sdk/fz;->b()I

    move-result v3

    invoke-virtual {v0}, Lcom/flurry/sdk/fz;->b()I

    move-result v4

    if-lt v3, v4, :cond_2

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/flurry/sdk/fn;->b:I

    return-void
.end method

.method public static a(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/au;->g()Lcom/flurry/sdk/fm;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/flurry/sdk/fs;->q:Lcom/flurry/sdk/fs;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fm;->a(Lcom/flurry/sdk/fs;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Close Tracking URL"

    invoke-static {v0, p1, p2, v1}, Lcom/flurry/sdk/fn;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    add-long v4, v0, v2

    new-instance v0, Lcom/flurry/sdk/dj;

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/dj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZI)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->i()Lcom/flurry/sdk/dk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/dk;->b(Lcom/flurry/sdk/kr;)V

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/fn;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/fn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/au;->g()Lcom/flurry/sdk/fm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/fm;->g()Ljava/util/List;

    move-result-object v0

    const-string v1, "Error Tracking URL"

    invoke-static {v0, p1, p2, v1}, Lcom/flurry/sdk/fn;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/au;->g()Lcom/flurry/sdk/fm;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/flurry/sdk/ft;->c:Lcom/flurry/sdk/ft;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fm;->a(Lcom/flurry/sdk/ft;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ClickTracking Tracking URL"

    invoke-static {v0, p1, p2, v1}, Lcom/flurry/sdk/fn;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/au;->g()Lcom/flurry/sdk/fm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/fm;->h()Ljava/util/List;

    move-result-object v0

    const-string v1, "Impression Tracking URL"

    invoke-static {v0, p1, p2, v1}, Lcom/flurry/sdk/fn;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/au;->g()Lcom/flurry/sdk/fm;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/flurry/sdk/fs;->c:Lcom/flurry/sdk/fs;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fm;->a(Lcom/flurry/sdk/fs;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Start Tracking URL"

    invoke-static {v0, p1, p2, v1}, Lcom/flurry/sdk/fn;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static f(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/au;->g()Lcom/flurry/sdk/fm;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/flurry/sdk/fs;->e:Lcom/flurry/sdk/fs;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fm;->a(Lcom/flurry/sdk/fs;)Ljava/util/List;

    move-result-object v0

    const-string v1, "First Quartile Tracking URL"

    invoke-static {v0, p1, p2, v1}, Lcom/flurry/sdk/fn;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static g(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/au;->g()Lcom/flurry/sdk/fm;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/flurry/sdk/fs;->d:Lcom/flurry/sdk/fs;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fm;->a(Lcom/flurry/sdk/fs;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Midpoint Tracking URL"

    invoke-static {v0, p1, p2, v1}, Lcom/flurry/sdk/fn;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static h(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/au;->g()Lcom/flurry/sdk/fm;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/flurry/sdk/fs;->f:Lcom/flurry/sdk/fs;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fm;->a(Lcom/flurry/sdk/fs;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Third Quartile Tracking URL"

    invoke-static {v0, p1, p2, v1}, Lcom/flurry/sdk/fn;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Lcom/flurry/sdk/au;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/au;->g()Lcom/flurry/sdk/fm;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/flurry/sdk/fs;->g:Lcom/flurry/sdk/fs;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fm;->a(Lcom/flurry/sdk/fs;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Complete Tracking URL"

    invoke-static {v0, p1, p2, v1}, Lcom/flurry/sdk/fn;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
