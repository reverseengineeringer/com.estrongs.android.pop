.class Lcom/google/android/gms/internal/fw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fr;

.field private final b:Lcom/google/android/gms/internal/fx;

.field private final c:Z

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fr;ZLcom/google/android/gms/internal/fx;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fw;->a:Lcom/google/android/gms/internal/fr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/fw;->c:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/fw;->b:Lcom/google/android/gms/internal/fx;

    iput-object p4, p0, Lcom/google/android/gms/internal/fw;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/google/android/gms/internal/fx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fw;->b:Lcom/google/android/gms/internal/fx;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fw;->c:Z

    return v0
.end method
