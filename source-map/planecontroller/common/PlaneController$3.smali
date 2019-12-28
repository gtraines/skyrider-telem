.class Lapp/panchip_weinikang/planecontroller/common/PlaneController$3;
.super Ljava/lang/Object;
.source "PlaneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/common/PlaneController;->onAckReceived([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$3;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 238
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$3;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->access$100(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    move-result-object v0

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->dismissWaitingPop()V

    return-void
.end method
