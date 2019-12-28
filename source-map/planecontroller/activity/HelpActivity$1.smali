.class Lapp/panchip_weinikang/planecontroller/activity/HelpActivity$1;
.super Landroid/support/v4/view/PagerAdapter;
.source "HelpActivity.java"


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

    .line 49
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 63
    iget-object p3, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;

    invoke-static {p3}, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->access$000(Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->access$000(Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 68
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->access$000(Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->access$000(Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
