.class Lcom/google/android/gms/tagmanager/ez;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/eu;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/ew;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/ew;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ez;->a:Lcom/google/android/gms/tagmanager/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/ew;Lcom/google/android/gms/tagmanager/ex;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/ez;-><init>(Lcom/google/android/gms/tagmanager/ew;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ez;->a:Lcom/google/android/gms/tagmanager/ew;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ew;->e(Lcom/google/android/gms/tagmanager/ew;)Lcom/google/android/gms/tagmanager/cg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/cg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ez;->a:Lcom/google/android/gms/tagmanager/ew;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/ew;->a(Lcom/google/android/gms/tagmanager/ew;J)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ez;->a:Lcom/google/android/gms/tagmanager/ew;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/ew;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ez;->a:Lcom/google/android/gms/tagmanager/ew;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ew;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
