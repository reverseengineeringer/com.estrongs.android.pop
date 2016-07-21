.class public final Lcom/google/android/gms/appdatasearch/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/accounts/Account;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;
    .locals 6

    new-instance v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/a;->a:Landroid/accounts/Account;

    iget-boolean v2, p0, Lcom/google/android/gms/appdatasearch/a;->b:Z

    iget-boolean v3, p0, Lcom/google/android/gms/appdatasearch/a;->c:Z

    iget-boolean v4, p0, Lcom/google/android/gms/appdatasearch/a;->d:Z

    iget-object v5, p0, Lcom/google/android/gms/appdatasearch/a;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;-><init>(Landroid/accounts/Account;ZZZLjava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/google/android/gms/appdatasearch/a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/appdatasearch/a;->c:Z

    return-object p0
.end method
