.class Lde/aflx/sardine/impl/SardineImpl$MySSLSocketFactory$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic this$1:Lde/aflx/sardine/impl/SardineImpl$MySSLSocketFactory;


# direct methods
.method constructor <init>(Lde/aflx/sardine/impl/SardineImpl$MySSLSocketFactory;)V
    .locals 0

    iput-object p1, p0, Lde/aflx/sardine/impl/SardineImpl$MySSLSocketFactory$1;->this$1:Lde/aflx/sardine/impl/SardineImpl$MySSLSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
