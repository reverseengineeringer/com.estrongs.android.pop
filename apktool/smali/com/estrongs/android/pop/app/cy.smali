.class Lcom/estrongs/android/pop/app/cy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/gmail/yuyang226/flickr/a/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ImageCommentActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ImageCommentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cy;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gmail/yuyang226/flickr/a/a/a;Lcom/gmail/yuyang226/flickr/a/a/a;)I
    .locals 5

    invoke-virtual {p1}, Lcom/gmail/yuyang226/flickr/a/a/a;->b()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/gmail/yuyang226/flickr/a/a/a;->b()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/gmail/yuyang226/flickr/a/a/a;

    check-cast p2, Lcom/gmail/yuyang226/flickr/a/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/cy;->a(Lcom/gmail/yuyang226/flickr/a/a/a;Lcom/gmail/yuyang226/flickr/a/a/a;)I

    move-result v0

    return v0
.end method
