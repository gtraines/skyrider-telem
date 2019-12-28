.class Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyOnItemClickListener;
.super Ljava/lang/Object;
.source "MediaListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;


# direct methods
.method private constructor <init>(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyOnItemClickListener;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$1;)V
    .locals 0

    .line 254
    invoke-direct {p0, p1}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyOnItemClickListener;-><init>(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 258
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyOnItemClickListener;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$1200(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)I

    move-result p1

    const/4 p4, 0x1

    if-ne p1, p4, :cond_1

    const p1, 0x7f070031

    .line 259
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iget-object p5, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyOnItemClickListener;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {p5}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$100(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Z

    move-result-object p5

    aget-boolean p5, p5, p3

    xor-int/2addr p5, p4

    invoke-virtual {p1, p5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 260
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyOnItemClickListener;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$100(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Z

    move-result-object p1

    iget-object p5, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyOnItemClickListener;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {p5}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$100(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Z

    move-result-object p5

    aget-boolean p5, p5, p3

    xor-int/2addr p4, p5

    aput-boolean p4, p1, p3

    const p1, 0x7f0700b0

    .line 261
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyOnItemClickListener;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$100(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Z

    move-result-object p2

    aget-boolean p2, p2, p3

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyOnItemClickListener;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$1300(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)V

    goto :goto_2

    .line 265
    :cond_1
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyOnItemClickListener;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$800(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)I

    move-result p1

    if-nez p1, :cond_2

    .line 266
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyOnItemClickListener;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    const-class p4, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 268
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyOnItemClickListener;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    const-class p4, Lapp/panchip_weinikang/planecontroller/activity/ReplayActivity;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    const-string p2, "path"

    .line 269
    iget-object p4, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyOnItemClickListener;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {p4}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$200(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Ljava/lang/String;

    move-result-object p4

    aget-object p3, p4, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$MyOnItemClickListener;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-virtual {p2, p1}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method
