.class final Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;
.super Landroid/support/v7/media/MediaRouteProvider$Callback;


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/MediaRouteProviderService;


# direct methods
.method private constructor <init>(Landroid/support/v7/media/MediaRouteProviderService;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;->this$0:Landroid/support/v7/media/MediaRouteProviderService;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProvider$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;-><init>(Landroid/support/v7/media/MediaRouteProviderService;)V

    return-void
.end method


# virtual methods
.method public onDescriptorChanged(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;->this$0:Landroid/support/v7/media/MediaRouteProviderService;

    # invokes: Landroid/support/v7/media/MediaRouteProviderService;->sendDescriptorChanged(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    invoke-static {v0, p2}, Landroid/support/v7/media/MediaRouteProviderService;->access$600(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    return-void
.end method
