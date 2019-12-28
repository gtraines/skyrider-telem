.class Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$ProgressUpdateTask;
.super Ljava/lang/Object;
.source "ReplayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressUpdateTask"
.end annotation


# instance fields
.field progressFrame:I

.field progressTime:Ljava/lang/String;

.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$ProgressUpdateTask;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 208
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$ProgressUpdateTask;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->access$300(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$ProgressUpdateTask;->progressFrame:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 209
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$ProgressUpdateTask;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->access$500(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$ProgressUpdateTask;->progressTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
