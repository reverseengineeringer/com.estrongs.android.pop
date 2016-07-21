.class Lcom/dianxinos/library/notify/network/t;
.super Lcom/dianxinos/library/notify/network/RequestBase;


# direct methods
.method public constructor <init>(Lcom/dianxinos/library/notify/network/n;Ljava/lang/String;Lcom/dianxinos/library/notify/network/k;JJIIILcom/dianxinos/library/notify/network/l;)V
    .locals 2

    invoke-direct/range {p0 .. p11}, Lcom/dianxinos/library/notify/network/RequestBase;-><init>(Lcom/dianxinos/library/notify/network/n;Ljava/lang/String;Lcom/dianxinos/library/notify/network/k;JJIIILcom/dianxinos/library/notify/network/l;)V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/t;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/dianxinos/library/notify/network/t;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Ljava/net/HttpURLConnection;)V
    .locals 1

    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public c(Ljava/net/HttpURLConnection;)V
    .locals 0

    return-void
.end method
