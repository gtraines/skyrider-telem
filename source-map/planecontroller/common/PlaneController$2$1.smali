.class Lapp/panchip_weinikang/planecontroller/common/PlaneController$2$1;
.super Ljava/lang/Object;
.source "PlaneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/common/PlaneController$2;->onFinishSending(Z[BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lapp/panchip_weinikang/planecontroller/common/PlaneController$2;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/common/PlaneController$2;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$2$1;->this$1:Lapp/panchip_weinikang/planecontroller/common/PlaneController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 124
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$2$1;->this$1:Lapp/panchip_weinikang/planecontroller/common/PlaneController$2;

    iget-object v0, v0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->access$100(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    move-result-object v0

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->dismissWaitingPop()V

    return-void
.end method
