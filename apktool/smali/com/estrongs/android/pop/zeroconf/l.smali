.class Lcom/estrongs/android/pop/zeroconf/l;
.super Lcom/estrongs/android/pop/zeroconf/g;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/zeroconf/g;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordType;Lcom/estrongs/android/pop/zeroconf/constants/DNSRecordClass;Z)V

    return-void
.end method


# virtual methods
.method public b(Lcom/estrongs/android/pop/zeroconf/w;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/zeroconf/w;",
            "Ljava/util/Set",
            "<",
            "Lcom/estrongs/android/pop/zeroconf/n;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/zeroconf/l;->a(Lcom/estrongs/android/pop/zeroconf/w;Ljava/util/Set;)V

    return-void
.end method
