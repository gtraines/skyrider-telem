.class Lapp/panchip_weinikang/planecontroller/activity/ControlActivity$1;
.super Ljava/lang/Object;
.source "ControlActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 97
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 100
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->access$000(Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;)Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    move-result-object p1

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->isPlaneReady()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->access$100(Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56fa\u4ef6\u7248\u672c\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->access$000(Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;)Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    move-result-object v1

    invoke-virtual {v1}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->getFpvVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->access$100(Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
