.class public final Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;
.super Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;
.source "SourceFile"

# interfaces
.implements Lcom/nothing/cardwidget/mediaplayer/IMediaMetaDataChanged;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x21
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView$Companion;

.field private static final TAG:Ljava/lang/String; = "MediaPlayerPagerView"


# instance fields
.field private final attrs:Landroid/util/AttributeSet;

.field private controller:Lcom/nothing/cardwidget/mediaplayer/IMediaController;

.field private isWidgetVisible:Z

.field private pageIndicator:Lcom/nothing/cardwidget/NTPageIndicatorDot;

.field private pagerAdapter:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

.field private playState:I

.field private uiRatio:F

.field private viewpager2:Landroidx/viewpager2/widget/ViewPager2;

.field private widgetId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->Companion:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->attrs:Landroid/util/AttributeSet;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->uiRatio:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->isWidgetVisible:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$getController$p(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;)Lcom/nothing/cardwidget/mediaplayer/IMediaController;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->controller:Lcom/nothing/cardwidget/mediaplayer/IMediaController;

    return-object p0
.end method

.method private final setSwitchVibration(B)V
    .locals 2

    const/16 v0, -0x80

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->Companion:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction$Companion;

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction$Companion;->supportSlideNext(B)Z

    move-result v1

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction$Companion;->supportSlidePrevious(B)Z

    move-result p1

    invoke-virtual {p0, v1}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->supportSlideLeft(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->supportSlideLeft(Z)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->supportSlideRight(Z)V

    return-void
.end method


# virtual methods
.method public final addMediaController(Lcom/nothing/cardwidget/mediaplayer/IMediaController;)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->controller:Lcom/nothing/cardwidget/mediaplayer/IMediaController;

    return-void
.end method

.method public final disableHScroll(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->disableHorizontalScroll(Z)V

    return-void
.end method

.method public final getAttrs()Landroid/util/AttributeSet;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->attrs:Landroid/util/AttributeSet;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->pagerAdapter:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    if-nez p0, :cond_0

    const-string p0, "pagerAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->onAttached()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->pagerAdapter:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    if-nez p0, :cond_0

    const-string p0, "pagerAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->onDetached()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/nothing/cardwidget/R$id;->media_player_viewpager2:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.media_player_viewpager2)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->viewpager2:Landroidx/viewpager2/widget/ViewPager2;

    sget v1, Lcom/nothing/cardwidget/R$id;->media_player_indicator:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.media_player_indicator)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/nothing/cardwidget/NTPageIndicatorDot;

    iput-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->pageIndicator:Lcom/nothing/cardwidget/NTPageIndicatorDot;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "pageIndicator"

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1, v0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->setPageListener(I)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->viewpager2:Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "viewpager2"

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->viewpager2:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v4, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v4, v2

    :cond_2
    new-instance v5, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView$onFinishInflate$1$1;

    invoke-direct {v5, p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView$onFinishInflate$1$1;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;)V

    invoke-direct {v0, v3, v4, v5}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;-><init>(Landroid/content/Context;Landroidx/viewpager2/widget/ViewPager2;Ly5/l;)V

    iput-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->pagerAdapter:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->viewpager2:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v3, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->pagerAdapter:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    if-nez v3, :cond_4

    const-string v3, "pagerAdapter"

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->viewpager2:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, p0

    :goto_0
    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    :cond_6
    return-void
.end method

.method public onSlidingSwitch(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->onSlidingSwitch(Z)V

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->controller:Lcom/nothing/cardwidget/mediaplayer/IMediaController;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/IMediaController;->onMusicSwitch(Z)V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->isWidgetVisible:Z

    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->pagerAdapter:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    if-nez p1, :cond_1

    const-string p1, "pagerAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    iget-boolean p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->isWidgetVisible:Z

    invoke-virtual {p1, p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->onVisibilityChanged(Z)V

    return-void
.end method

.method public final setOpenAppListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ln5/p<",
            "Landroid/view/View;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->pagerAdapter:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    if-nez p0, :cond_0

    const-string p0, "pagerAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->setOpenAppListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setWidgetId(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->widgetId:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->pagerAdapter:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    if-nez p0, :cond_0

    const-string p0, "pagerAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->setWidgetId(I)V

    return-void
.end method

.method public final updateDisplayRatio(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->setDisplayRatio(F)V

    iput p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->uiRatio:F

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->pagerAdapter:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    if-nez p0, :cond_0

    const-string p0, "pagerAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->updateDisplayRatio(F)V

    return-void
.end method

.method public updateMusicMetaData(Ln2/b;Z)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "pagerAdapter"

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->pagerAdapter:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    if-nez p2, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->setMusicMetaData(Ln2/b;)V

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->pagerAdapter:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    if-nez p2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, p2

    :goto_1
    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->updateMusicMetaData(Ln2/b;)V

    :goto_2
    invoke-virtual {p1}, Ln2/b;->m()B

    move-result p1

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->setSwitchVibration(B)V

    return-void
.end method

.method public updateMusicPosition(I)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->pagerAdapter:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    if-nez p0, :cond_0

    const-string p0, "pagerAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->updateMusicPosition(I)V

    return-void
.end method

.method public updatePlayBackState(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->playState:I

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->pagerAdapter:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    if-nez p0, :cond_0

    const-string p0, "pagerAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->updatePlayBackState(I)V

    return-void
.end method
