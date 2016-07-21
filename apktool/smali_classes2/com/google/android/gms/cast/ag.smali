.class public Lcom/google/android/gms/cast/ag;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/cast/ae;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/aa;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/cast/ae;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/cast/ae;-><init>(Lcom/google/android/gms/cast/aa;Lcom/google/android/gms/cast/af;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/ag;->a:Lcom/google/android/gms/cast/ae;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/cast/ae;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ag;->a:Lcom/google/android/gms/cast/ae;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ae;->b()V

    iget-object v0, p0, Lcom/google/android/gms/cast/ag;->a:Lcom/google/android/gms/cast/ae;

    return-object v0
.end method
