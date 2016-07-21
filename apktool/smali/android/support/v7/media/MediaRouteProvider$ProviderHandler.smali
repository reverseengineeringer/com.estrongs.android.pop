.class final Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/MediaRouteProvider;


# direct methods
.method private constructor <init>(Landroid/support/v7/media/MediaRouteProvider;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;->this$0:Landroid/support/v7/media/MediaRouteProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProvider$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;-><init>(Landroid/support/v7/media/MediaRouteProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;->this$0:Landroid/support/v7/media/MediaRouteProvider;

    # invokes: Landroid/support/v7/media/MediaRouteProvider;->deliverDescriptorChanged()V
    invoke-static {v0}, Landroid/support/v7/media/MediaRouteProvider;->access$100(Landroid/support/v7/media/MediaRouteProvider;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;->this$0:Landroid/support/v7/media/MediaRouteProvider;

    # invokes: Landroid/support/v7/media/MediaRouteProvider;->deliverDiscoveryRequestChanged()V
    invoke-static {v0}, Landroid/support/v7/media/MediaRouteProvider;->access$200(Landroid/support/v7/media/MediaRouteProvider;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
