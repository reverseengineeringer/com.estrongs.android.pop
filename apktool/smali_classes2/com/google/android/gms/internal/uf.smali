.class public Lcom/google/android/gms/internal/uf;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ug;

.field public static final b:Lcom/google/android/gms/internal/uh;

.field public static final c:Lcom/google/android/gms/internal/uj;

.field public static final d:Lcom/google/android/gms/internal/ui;

.field public static final e:Lcom/google/android/gms/internal/uk;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e8fa0

    new-instance v0, Lcom/google/android/gms/internal/ug;

    const-string v1, "created"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ug;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/uf;->a:Lcom/google/android/gms/internal/ug;

    new-instance v0, Lcom/google/android/gms/internal/uh;

    const-string v1, "lastOpenedTime"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/uh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/uf;->b:Lcom/google/android/gms/internal/uh;

    new-instance v0, Lcom/google/android/gms/internal/uj;

    const-string v1, "modified"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/uj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/uf;->c:Lcom/google/android/gms/internal/uj;

    new-instance v0, Lcom/google/android/gms/internal/ui;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ui;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/uf;->d:Lcom/google/android/gms/internal/ui;

    new-instance v0, Lcom/google/android/gms/internal/uk;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/uk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/uf;->e:Lcom/google/android/gms/internal/uk;

    return-void
.end method
