.class Lapp/panchip_weinikang/planecontroller/activity/ControlActivity$2;
.super Ljava/lang/Object;
.source "ControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity$2;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 114
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity$2;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->access$000(Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;)Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    move-result-object v0

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->handshake()V

    return-void
.end method
