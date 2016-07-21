.class Lcom/dianxinos/library/notify/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/pm/PackageInfo;

.field final synthetic b:Lcom/dianxinos/library/notify/c/d;


# direct methods
.method constructor <init>(Lcom/dianxinos/library/notify/c/d;Landroid/content/pm/PackageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/library/notify/c/e;->b:Lcom/dianxinos/library/notify/c/d;

    iput-object p2, p0, Lcom/dianxinos/library/notify/c/e;->a:Landroid/content/pm/PackageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/library/notify/c/e;->a:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/dianxinos/library/notify/c/e;->a:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0, v1}, Lcom/dianxinos/library/notify/dispatcher/q;->b(Ljava/lang/String;I)V

    return-void
.end method
