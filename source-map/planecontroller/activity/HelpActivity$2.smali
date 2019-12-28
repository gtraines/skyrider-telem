.class Lapp/panchip_weinikang/planecontroller/activity/HelpActivity$2;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity$2;->this$0:Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    const/4 v0, 0x0

    .line 81
    :goto_0
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity$2;->this$0:Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->access$000(Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 82
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity$2;->this$0:Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->access$100(Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    aget-object v1, v1, v0

    if-ne v0, p1, :cond_0

    const v2, 0x7f06006c

    goto :goto_1

    :cond_0
    const v2, 0x7f06006d

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
