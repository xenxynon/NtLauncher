.class public final Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;
.super Lcom/nothing/cardwidget/RemoteServiceView;
.source "SourceFile"

# interfaces
.implements Lcom/nothing/cardwidget/mediaplayer/IMediaController;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x21
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$Companion;,
        Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;,
        Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;,
        Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$Companion;

.field private static final DURATION_COVER_FADE_OUT:J = 0x96L

.field private static final DURATION_MEDIA_PLAYER_FADE_IN:J = 0xfaL

.field private static final DURATION_STANDBY_STATE:J = 0xbb8L

.field private static final KEY_IS_WIDGET_ID_ENABLED:Ljava/lang/String; = "is_widget_id_enabled"

.field private static final KEY_MUSIC_CONTROL_EVENT:Ljava/lang/String; = "music_control_event"

.field private static final KEY_SET_ENABLED_WIDGET_ID:Ljava/lang/String; = "set_enabled_widget_id"

.field private static final MSG_ANIM_STATE_SWITCH:I = 0x3e9

.field private static final SWITCH_ICON_DISABLE_ALPHA:F = 0.3f

.field private static final TAG:Ljava/lang/String; = "MediaPlayerContainer"


# instance fields
.field private animHandler:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;

.field private final animInterpolator:Landroid/view/animation/PathInterpolator;

.field private authGuideClickListener:Landroid/view/View$OnClickListener;

.field private authorizeGuideCover:Landroid/widget/TextView;

.field private containerCornerRadius:Ljava/lang/Float;

.field private displayRatio:F

.field private guideNotifAuth:Ljava/lang/String;

.field private isAppExist:Z

.field private mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

.field private openMusicTip:Ljava/lang/String;

.field private final packageRemovedReceiver:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$packageRemovedReceiver$1;

.field private startUpCover:Lcom/airbnb/lottie/LottieAnimationView;

.field private widgetId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->Companion:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$Companion;

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

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/RemoteServiceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p3, Landroid/view/animation/PathInterpolator;

    const p4, 0x3f666666    # 0.9f

    const v0, 0x3c23d70a    # 0.01f

    const v1, 0x3e051eb8    # 0.13f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p3, p4, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p3, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->animInterpolator:Landroid/view/animation/PathInterpolator;

    iput v2, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->displayRatio:F

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->isAppExist:Z

    new-instance p3, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$packageRemovedReceiver$1;

    invoke-direct {p3, p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$packageRemovedReceiver$1;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;)V

    iput-object p3, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->packageRemovedReceiver:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$packageRemovedReceiver$1;

    invoke-direct {p0, p2, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->getRemoteResource(Landroid/util/AttributeSet;Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/nothing/cardwidget/R$layout;->mediaplayer_widget_container:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/nothing/cardwidget/R$drawable;->color_media_container_bg:I

    invoke-static {p2, p3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string p2, "this"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->initView(Landroid/view/View;)V

    new-instance p1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;

    iget-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->startUpCover:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p2, :cond_0

    const-string p2, "startUpCover"

    invoke-static {p2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    const-string p4, "getMainLooper()"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, p3}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->animHandler:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->initView$lambda-8(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$applyCachedData(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->applyCachedData()V

    return-void
.end method

.method public static final synthetic access$getMediaPlayerView$p(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;)Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    return-object p0
.end method

.method public static final synthetic access$getStartUpCover$p(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->startUpCover:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public static final synthetic access$recordEnabledWidget(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->recordEnabledWidget()V

    return-void
.end method

.method public static final synthetic access$showMediaPlayerViewPager(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->showMediaPlayerViewPager(IZ)V

    return-void
.end method

.method public static final synthetic access$updateStartUpViewState(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->updateStartUpViewState(I)V

    return-void
.end method

.method private final applyCachedData()V
    .locals 3

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->getCachedData()Ln5/p;

    move-result-object v0

    invoke-virtual {v0}, Ln5/p;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0}, Ln5/p;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v0}, Ln5/p;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->onDataChanged(Landroid/os/Bundle;)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->onDataChanged(Landroid/os/Bundle;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->onDataChanged(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public static synthetic b(ILcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;Ly5/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->onClickStartUpView$lambda-28(ILcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;Ly5/a;Landroid/view/View;)V

    return-void
.end method

.method private final getPkgInstallIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-object p0
.end method

.method private final getRemoteResource(Landroid/util/AttributeSet;Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    sget-object v1, Lk2/a;->a:Lk2/a$a;

    const/4 v2, 0x3

    new-array v2, v2, [Ln5/k;

    const-string v3, "openMusicTip"

    invoke-virtual {v1, p2, v3}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/nothing/cardwidget/R$attr;->openMusicTip:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "guideNotifAuth"

    invoke-virtual {v1, p2, v0}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v3, Lcom/nothing/cardwidget/R$attr;->guideNotifAuth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "containerCornerRadius"

    invoke-virtual {v1, p2, v0}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v3, Lcom/nothing/cardwidget/R$attr;->containerCornerRadius:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v2}, Lo5/d0;->h([Ln5/k;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lk2/a$a;->k(Landroid/util/AttributeSet;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget v3, Lcom/nothing/cardwidget/R$attr;->openMusicTip:I

    if-ne v2, v3, :cond_1

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, p1, v1}, Lk2/a$a;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->openMusicTip:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget v3, Lcom/nothing/cardwidget/R$attr;->guideNotifAuth:I

    if-ne v2, v3, :cond_2

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, p1, v1}, Lk2/a$a;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->guideNotifAuth:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget v3, Lcom/nothing/cardwidget/R$attr;->containerCornerRadius:I

    if-ne v2, v3, :cond_0

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, p2, p1, v1, v3}, Lk2/a$a;->h(Landroid/content/Context;Landroid/util/AttributeSet;IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->containerCornerRadius:Ljava/lang/Float;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final initView(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/nothing/cardwidget/R$id;->media_player_pager_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.media_player_pager_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    iput-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    sget v0, Lcom/nothing/cardwidget/R$id;->authorize_guide_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.authorize_guide_cover)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->authorizeGuideCover:Landroid/widget/TextView;

    sget v0, Lcom/nothing/cardwidget/R$id;->startup_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.startup_cover)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->startUpCover:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "mediaPlayerView"

    invoke-static {p1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->addMediaController(Lcom/nothing/cardwidget/mediaplayer/IMediaController;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->authorizeGuideCover:Landroid/widget/TextView;

    if-nez p1, :cond_1

    const-string p1, "authorizeGuideCover"

    invoke-static {p1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    new-instance v1, Lcom/nothing/cardwidget/mediaplayer/view/b;

    invoke-direct {v1, p0}, Lcom/nothing/cardwidget/mediaplayer/view/b;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->startUpCover:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_2

    const-string p1, "startUpCover"

    invoke-static {p1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    sget-object p1, Lcom/nothing/cardwidget/util/UiUtil;->INSTANCE:Lcom/nothing/cardwidget/util/UiUtil;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/nothing/cardwidget/util/UiUtil;->isDarkTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/nothing/cardwidget/R$raw;->music_enter_initial_state_dark:I

    goto :goto_1

    :cond_3
    sget p1, Lcom/nothing/cardwidget/R$raw;->music_enter_initial_state_light:I

    :goto_1
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$initView$2;

    invoke-direct {v0, p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$initView$2;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private static final initView$lambda-8(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->authGuideClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final isMusicAppExist()Z
    .locals 5

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->getAppName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/nothing/cardwidget/mediaplayer/utils/ContextExtKt;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->isAppExist:Z

    return v1
.end method

.method private final isStartUpAnimationRunning()Z
    .locals 4

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->animHandler:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;

    const/4 v1, 0x0

    const-string v2, "animHandler"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->getCurStartUpState()Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    move-result-object v0

    sget-object v3, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;->IDLE:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    invoke-virtual {v0, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->animHandler:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->getCurStartUpState()Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    move-result-object p0

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;->FINISH:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-gez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private final isWidgetAvailable(I)Z
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->widgetId:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->isWidgetEnabled(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;->Companion:Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;->needNotificationAuth(I)Z

    move-result p1

    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final isWidgetEnabled(I)Z
    .locals 2

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->isWidgetEnabled(I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "is_widget_id_enabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$isWidgetEnabled$3$1;

    invoke-direct {v1, p1, p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$isWidgetEnabled$3$1;-><init>(ILcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;)V

    invoke-virtual {p0, v0, v1}, Lcom/nothing/cardwidget/RemoteServiceView;->forceCallRemoteService(Landroid/os/Bundle;Ly5/l;)V

    const/4 p0, 0x0

    return p0
.end method

.method private final onClickStartUpView(ILy5/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ly5/a<",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->startUpCover:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    const-string v0, "startUpCover"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/nothing/cardwidget/mediaplayer/view/a;

    invoke-direct {v1, p1, p0, p2}, Lcom/nothing/cardwidget/mediaplayer/view/a;-><init>(ILcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;Ly5/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final onClickStartUpView$lambda-28(ILcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;Ly5/a;Landroid/view/View;)V
    .locals 4

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$confirmPlay"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;->Companion:Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;

    invoke-virtual {p3, p0}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;->needEnableMusicService(I)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-direct {p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->isMusicAppExist()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->animHandler:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;

    const/4 p3, 0x0

    const-string v0, "animHandler"

    if-nez p0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p0, p3

    :cond_1
    invoke-virtual {p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->getCurStartUpState()Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    move-result-object p0

    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    goto :goto_3

    :cond_2
    iget-object p0, p1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->animHandler:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;

    if-nez p0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p0, p3

    :cond_3
    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;->FINISH:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    invoke-virtual {p0, v1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->setCurStartUpState(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;)V

    iget-object p0, p1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->animHandler:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;

    if-nez p0, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object p3, p0

    :goto_0
    invoke-virtual {p3, v1, v2, v3}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->sendStartUpStateMessage(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;J)V

    invoke-interface {p2}, Ly5/a;->invoke()Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object p0, p1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->animHandler:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;

    if-nez p0, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p0, p3

    :cond_6
    iget-object p1, p1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->animHandler:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;

    if-nez p1, :cond_7

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object p3, p1

    :goto_1
    invoke-virtual {p3}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->switchNextState()Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->sendStartUpStateMessage(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;J)V

    goto :goto_3

    :cond_8
    :goto_2
    iget-object p0, p1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->openMusicTip:Ljava/lang/String;

    if-eqz p0, :cond_9

    sget-object p2, Lcom/nothing/cardwidget/util/ToastUtil;->INSTANCE:Lcom/nothing/cardwidget/util/ToastUtil;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "context.applicationContext"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1, p0}, Lcom/nothing/cardwidget/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_9
    :goto_3
    return-void
.end method

.method private final recordEnabledWidget()V
    .locals 9

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->widgetId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->setWidgetEnabled(IZ)V

    invoke-static {}, Lo2/b;->b()Li6/m0;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$recordEnabledWidget$1$1;

    const/4 v1, 0x0

    invoke-direct {v6, v0, p0, v1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$recordEnabledWidget$1$1;-><init>(ILcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;Lq5/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    :cond_0
    return-void
.end method

.method private final showAuthorizationGuideView()V
    .locals 4

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    const-string v1, "mediaPlayerView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->disableHScroll(Z)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->startUpCover:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_2

    const-string v0, "startUpCover"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->authorizeGuideCover:Landroid/widget/TextView;

    if-nez v0, :cond_3

    const-string v0, "authorizeGuideCover"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->guideNotifAuth:Ljava/lang/String;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final showMediaPlayerViewPager(IZ)V
    .locals 6

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    const-string v1, "mediaPlayerView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    sget-object v3, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;->Companion:Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;

    invoke-virtual {v3, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;->isConnected(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->disableHScroll(Z)V

    const-string p1, "startUpCover"

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->startUpCover:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p2, :cond_1

    invoke-static {p1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p2, v2

    :cond_1
    const/4 p1, 0x2

    new-array v0, p1, [F

    fill-array-data v0, :array_0

    const-string v3, "alpha"

    invoke-static {p2, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v4, 0x96

    invoke-virtual {p2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$showMediaPlayerViewPager$startUpCoverFadeOut$1$1;

    invoke-direct {v0, p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$showMediaPlayerViewPager$startUpCoverFadeOut$1$1;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    new-array p1, p1, [F

    fill-array-data p1, :array_1

    invoke-static {v2, v3, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->animInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->authorizeGuideCover:Landroid/widget/TextView;

    if-nez p2, :cond_4

    const-string p2, "authorizeGuideCover"

    invoke-static {p2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p2, v2

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->startUpCover:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p2, :cond_5

    invoke-static {p1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p2, v2

    :cond_5
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    if-nez p0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v2, p0

    :goto_1
    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final showStartUpView(ILy5/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ly5/a<",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    const-string v1, "mediaPlayerView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->disableHScroll(Z)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->authorizeGuideCover:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "authorizeGuideCover"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->startUpCover:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_3

    const-string v0, "startUpCover"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-direct {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->onClickStartUpView(ILy5/a;)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->isStartUpAnimationRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->animHandler:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;

    const-string p2, "animHandler"

    if-nez p1, :cond_5

    invoke-static {p2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p1, v2

    :cond_5
    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;->IDLE:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v0, v3, v4}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->sendStartUpStateMessage(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;J)V

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->animHandler:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;

    if-nez p0, :cond_6

    invoke-static {p2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v2, p0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$AnimStateHandler;->setCurStartUpState(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$StartUpState;)V

    return-void
.end method

.method private final updateDisplayRatio(F)V
    .locals 4

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->authorizeGuideCover:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "authorizeGuideCover"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x35

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    if-nez p0, :cond_1

    const-string p0, "mediaPlayerView"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p0, v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    :cond_2
    if-eqz v1, :cond_3

    const/16 p0, 0x51

    int-to-float p0, p0

    mul-float/2addr p0, p1

    invoke-static {p0}, La6/a;->b(F)I

    move-result p0

    sget p1, Lcom/nothing/cardwidget/R$id;->media_play_previous_icon:I

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->findIndexByLayerId(I)I

    move-result p1

    sget v0, Lcom/nothing/cardwidget/R$id;->media_play_next_icon:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->findIndexByLayerId(I)I

    move-result v0

    invoke-virtual {v1, p1, p0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    invoke-virtual {v1, v0, p0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    :cond_3
    return-void
.end method

.method private final updateMusicPlayingState(I)V
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    if-nez v0, :cond_0

    const-string v0, "mediaPlayerView"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->updatePlayBackState(I)V

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->updateStartUpViewState(I)V

    return-void
.end method

.method private final updatePlayStateIfNecessary(Landroid/os/Bundle;)V
    .locals 1

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->parseMusicData(Landroid/os/Bundle;)Ln2/a;

    move-result-object p1

    instance-of v0, p1, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;

    invoke-virtual {p1}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;->getState()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->updateMusicPlayingState(I)V

    :cond_0
    return-void
.end method

.method private final updateStartUpViewState(I)V
    .locals 1

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$updateStartUpViewState$1;

    invoke-direct {v0, p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$updateStartUpViewState$1;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;I)V

    invoke-direct {p0, p1, v0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->updateStartUpViewState(ILy5/a;)V

    return-void
.end method

.method private final updateStartUpViewState(ILy5/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ly5/a<",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->widgetId:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->isWidgetEnabled(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStartUpViewState isEnabledWidget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", widgetId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->widgetId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaPlayerContainer"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;->Companion:Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;

    invoke-virtual {v2, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;->needNotificationAuth(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->showAuthorizationGuideView()V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->isMusicAppExist()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->showMediaPlayerViewPager(IZ)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->showStartUpView(ILy5/a;)V

    :goto_2
    return-void
.end method

.method private final updateSwitchIconByAction(B)V
    .locals 7

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$updateSwitchIconByAction$tintPreviousIcon$1;

    invoke-direct {v0, p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$updateSwitchIconByAction$tintPreviousIcon$1;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;)V

    new-instance v1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$updateSwitchIconByAction$tintNextIcon$1;

    invoke-direct {v1, p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$updateSwitchIconByAction$tintNextIcon$1;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/nothing/cardwidget/R$color;->color_media_switch_icon:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, -0x80

    if-eq p1, v3, :cond_2

    sget-object v3, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction;->Companion:Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction$Companion;

    invoke-virtual {v3, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction$Companion;->supportSlidePrevious(B)Z

    move-result v4

    const v5, 0x3e99999a    # 0.3f

    if-eqz v4, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v3, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/PlaybackStateAction$Companion;->supportSlideNext(B)Z

    move-result p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    invoke-interface {v1, p0, v2}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/nothing/cardwidget/RemoteServiceView;->onAttachedToWindow()V

    :try_start_0
    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->packageRemovedReceiver:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$packageRemovedReceiver$1;

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->getPkgInstallIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onDataChanged(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->cacheData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->widgetId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->isWidgetAvailable(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->updatePlayStateIfNecessary(Landroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->parseMusicData(Landroid/os/Bundle;)Ln2/a;

    move-result-object p1

    instance-of v1, p1, Ln2/b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    if-nez v1, :cond_1

    const-string v1, "mediaPlayerView"

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    check-cast p1, Ln2/b;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->updateMusicMetaData(Ln2/b;Z)V

    invoke-virtual {p1}, Ln2/b;->m()B

    move-result p1

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->updateSwitchIconByAction(B)V

    iget-boolean p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->isAppExist:Z

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->isMusicAppExist()Z

    move-result p1

    iput-boolean p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->isAppExist:Z

    invoke-virtual {v0}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->getPlaybackState()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->updateStartUpViewState(I)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;

    invoke-virtual {p1}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;->getState()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->updateMusicPlayingState(I)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlayingPosition;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlayingPosition;

    invoke-virtual {p1}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlayingPosition;->getPlayingPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->setMusicPlayingPosition(I)V

    goto :goto_0

    :cond_4
    const-string p0, "MediaPlayerContainer"

    const-string p1, "Unsupported data type."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/nothing/cardwidget/RemoteServiceView;->onDetachedFromWindow()V

    :try_start_0
    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->packageRemovedReceiver:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$packageRemovedReceiver$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetachedFromWindow error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaPlayerContainer"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->containerCornerRadius:Ljava/lang/Float;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-direct {v3, v2, v2, v4, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object p0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v0, v0, p0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_2
    return-void
.end method

.method public onMusicSwitch(Z)V
    .locals 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->PREVIOUS:Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->NEXT:Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    :goto_0
    invoke-virtual {p1}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->getEvent()Ljava/lang/String;

    move-result-object p1

    const-string v1, "music_control_event"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo2/b;->b()Li6/m0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$onMusicSwitch$2$1;

    const/4 p1, 0x0

    invoke-direct {v5, p0, v0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$onMusicSwitch$2$1;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;Landroid/os/Bundle;Lq5/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method

.method public onPlayStateSwitch(Z)V
    .locals 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->PLAY:Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->PAUSE:Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;

    :goto_0
    invoke-virtual {p1}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicControlEvent;->getEvent()Ljava/lang/String;

    move-result-object p1

    const-string v1, "music_control_event"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo2/b;->b()Li6/m0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$onPlayStateSwitch$2$1;

    const/4 p1, 0x0

    invoke-direct {v5, p0, v0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$onPlayStateSwitch$2$1;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;Landroid/os/Bundle;Lq5/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method

.method public final setDisplayRatio(F)V
    .locals 2

    iput p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->displayRatio:F

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    if-nez v0, :cond_0

    const-string v0, "mediaPlayerView"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->displayRatio:F

    invoke-virtual {v0, v1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->updateDisplayRatio(F)V

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->updateDisplayRatio(F)V

    return-void
.end method

.method public final setMusicMetaData(Ln2/b;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->getCachedData()Ln5/p;

    move-result-object v1

    invoke-virtual {v1}, Ln5/p;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->parseMusicData(Landroid/os/Bundle;)Ln2/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    instance-of v1, v0, Ln2/b;

    if-eqz v1, :cond_1

    check-cast v0, Ln2/b;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    if-nez p0, :cond_3

    const-string p0, "mediaPlayerView"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v2, p0

    :goto_3
    const/4 p0, 0x0

    invoke-virtual {v2, p1, p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->updateMusicMetaData(Ln2/b;Z)V

    return-void
.end method

.method public final setMusicPlayingPosition(I)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    if-nez p0, :cond_0

    const-string p0, "mediaPlayerView"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->updateMusicPosition(I)V

    return-void
.end method

.method public final setMusicPlayingState(I)V
    .locals 3

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->getCachedData()Ln5/p;

    move-result-object v1

    invoke-virtual {v1}, Ln5/p;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->parseMusicData(Landroid/os/Bundle;)Ln2/a;

    move-result-object v0

    instance-of v1, v0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_2
    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    if-nez v0, :cond_3

    const-string v0, "mediaPlayerView"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v2, v0

    :goto_2
    invoke-virtual {v2, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->updatePlayBackState(I)V

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->updateStartUpViewState(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->authGuideClickListener:Landroid/view/View$OnClickListener;

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

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    if-nez p0, :cond_0

    const-string p0, "mediaPlayerView"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->setOpenAppListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setWidgetId(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->widgetId:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->mediaPlayerView:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    if-nez p0, :cond_0

    const-string p0, "mediaPlayerView"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->setWidgetId(I)V

    return-void
.end method
