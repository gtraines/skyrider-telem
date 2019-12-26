.class Lapp/panchip_weinikang/planecontroller/common/PlaneController$4;
.super Ljava/lang/Object;
.source "PlaneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/common/PlaneController;->onCmdReceived([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

.field final synthetic val$cmd:[B


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/common/PlaneController;[B)V
    .locals 0

    .line 263
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$4;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    iput-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$4;->val$cmd:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 266
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$4;->val$cmd:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 271
    :pswitch_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$4;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->access$100(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    move-result-object v0

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$4;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->access$900(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$4;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->access$100(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    move-result-object v0

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$4;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->access$800(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
