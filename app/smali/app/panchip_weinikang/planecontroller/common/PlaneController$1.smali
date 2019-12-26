.class Lapp/panchip_weinikang/planecontroller/common/PlaneController$1;
.super Landroid/os/CountDownTimer;
.source "PlaneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/panchip_weinikang/planecontroller/common/PlaneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/common/PlaneController;JJ)V
    .locals 0

    .line 42
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 50
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->access$000(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u65e0\u6cd5\u8fde\u63a5\u5230\u6444\u50cf\u5934\uff0c\u8bf7\u786e\u8ba4\u5df2\u8fde\u63a5\u81f3\u6b63\u786e\u7684wifi\u70ed\u70b9"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 51
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->access$100(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    move-result-object v0

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->dismissWaitingPop()V

    .line 52
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->access$202(Lapp/panchip_weinikang/planecontroller/common/PlaneController;Z)Z

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
