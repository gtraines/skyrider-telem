.class Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$1;
.super Landroid/os/CountDownTimer;
.source "ControlUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;JJ)V
    .locals 0

    .line 164
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 172
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$002(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Z)Z

    .line 173
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$100(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0600ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
