.class Lcom/google/android/gms/tagmanager/dl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/di;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/di;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/dl;->a:Lcom/google/android/gms/tagmanager/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dl;->a:Lcom/google/android/gms/tagmanager/di;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->e(Lcom/google/android/gms/tagmanager/di;)Lcom/google/android/gms/tagmanager/au;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/au;->a()V

    return-void
.end method
