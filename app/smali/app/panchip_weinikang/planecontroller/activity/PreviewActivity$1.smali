.class Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity$1;
.super Ljava/lang/Object;
.source "PreviewActivity.java"

# interfaces
.implements Lcom/github/chrisbanes/photoview/OnPhotoTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoTap(Landroid/widget/ImageView;FF)V
    .locals 0

    .line 36
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;->access$000(Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;

    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;->access$000(Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
