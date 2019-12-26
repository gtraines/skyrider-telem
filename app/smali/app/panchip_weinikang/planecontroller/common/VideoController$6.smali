.class Lapp/panchip_weinikang/planecontroller/common/VideoController$6;
.super Ljava/lang/Object;
.source "VideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/common/VideoController;->onFinishEncoding()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/common/VideoController;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/common/VideoController;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$6;->this$0:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 378
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$6;->this$0:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->access$700(Lapp/panchip_weinikang/planecontroller/common/VideoController;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0600cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 379
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$6;->this$0:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->access$000(Lapp/panchip_weinikang/planecontroller/common/VideoController;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c002f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
