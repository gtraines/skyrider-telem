.class public Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private dots:[Landroid/widget/ImageView;

.field private pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->pages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;)[Landroid/widget/ImageView;
    .locals 0

    .line 19
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->dots:[Landroid/widget/ImageView;

    return-object p0
.end method

.method private init()V
    .locals 5

    const v0, 0x7f070025

    .line 34
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070061

    .line 36
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x3

    .line 38
    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->dots:[Landroid/widget/ImageView;

    .line 39
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->dots:[Landroid/widget/ImageView;

    const v1, 0x7f070044

    invoke-virtual {p0, v1}, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 40
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->dots:[Landroid/widget/ImageView;

    const v1, 0x7f070045

    invoke-virtual {p0, v1}, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 41
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->dots:[Landroid/widget/ImageView;

    const v1, 0x7f070046

    invoke-virtual {p0, v1}, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->pages:Ljava/util/List;

    .line 44
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->pages:Ljava/util/List;

    const/4 v3, 0x0

    const v4, 0x7f09001e

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->pages:Ljava/util/List;

    const v4, 0x7f09001b

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->pages:Ljava/util/List;

    const v4, 0x7f090033

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity$1;

    invoke-direct {v1, p0}, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity$1;-><init>(Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 73
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity$2;

    invoke-direct {v1, p0}, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity$2;-><init>(Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 91
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070025

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001f

    .line 28
    invoke-virtual {p0, p1}, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;->init()V

    return-void
.end method
