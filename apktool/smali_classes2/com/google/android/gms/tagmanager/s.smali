.class final Lcom/google/android/gms/tagmanager/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/v;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/q;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/fe;)Lcom/google/android/gms/tagmanager/ew;
    .locals 7

    new-instance v0, Lcom/google/android/gms/tagmanager/ew;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/ew;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/q;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/fe;)V

    return-object v0
.end method
