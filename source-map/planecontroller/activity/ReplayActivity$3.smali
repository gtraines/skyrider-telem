.class Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$3;
.super Ljava/lang/Object;
.source "ReplayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->onPrepared(Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

.field final synthetic val$aviDecoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;Lapp/panchip_weinikang/planecontroller/util/AviDecoder;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$3;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    iput-object p2, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$3;->val$aviDecoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 162
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$3;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->access$300(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$3;->val$aviDecoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-virtual {v1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->getFrameNum()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 163
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$3;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->access$300(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 164
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$3;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->access$400(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$3;->val$aviDecoder:Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    invoke-virtual {v2}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->getDuration()I

    move-result v2

    invoke-static {v2}, Lapp/panchip_weinikang/planecontroller/util/TransformUtil;->ms2sec(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
