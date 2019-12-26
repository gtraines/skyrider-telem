.class Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$1;
.super Ljava/lang/Object;
.source "ReplayActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->init()V
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

    .line 56
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 60
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->access$000(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->access$100(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->access$000(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->access$100(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    move-result-object p1

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->access$100(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    move-result-object p1

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->pause()V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->access$000(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->access$100(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->seekTo(I)V

    .line 76
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->access$100(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Lapp/panchip_weinikang/planecontroller/util/AviDecoder;

    move-result-object p1

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/util/AviDecoder;->play()V

    .line 77
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;->access$200(Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0600a5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    return-void
.end method
