.class Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$2;
.super Ljava/lang/Object;
.source "ReplayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->onCompletion(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$2;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 150
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$2;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->access$200(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0600a6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
