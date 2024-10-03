.class public final Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x21
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$Companion;,
        Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;,
        Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;,
        Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;,
        Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$AnimationHandle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIM_PLAY_PAUSE_FADE_OUT:I = 0x3e9

.field public static final Companion:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$Companion;

.field private static final DURATION_PLAY_ALBUM_COVER_FADE:J = 0x15eL

.field private static final DURATION_PLAY_PAUSE_FADE_IN:J = 0xfaL

.field private static final DURATION_PLAY_PAUSE_FADE_OUT:J = 0xfaL

.field private static final DURATION_PLAY_PAUSE_HOLD:J = 0x1c2L

.field private static final INTERPOLATOR_ALBUM_COVER_FADE:Landroid/view/animation/PathInterpolator;

.field private static final INTERPOLATOR_PLAY_PAUSE_FADE:Landroid/view/animation/PathInterpolator;

.field private static final PAGE_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPagerAdapter"


# instance fields
.field private final animHandler:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$AnimationHandle;

.field private final context:Landroid/content/Context;

.field private firstPageViewHolder:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

.field private isAttachToWindow:Z

.field private final latestAlbumIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Icon;",
            ">;"
        }
    .end annotation
.end field

.field private mainHandler:Landroid/os/Handler;

.field private musicData:Ln2/b;

.field private openAppConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ln5/p<",
            "Landroid/view/View;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private playPauseFadeInAnimation:Landroid/animation/ObjectAnimator;

.field private playPauseFadeOutAnimation:Landroid/animation/ObjectAnimator;

.field private final playStateCallback:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "Ljava/lang/Boolean;",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field private secondPageViewHolder:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

.field private uiRatio:F

.field private final viewPager2:Landroidx/viewpager2/widget/ViewPager2;

.field private widgetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->Companion:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$Companion;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3c23d70a    # 0.01f

    const v3, 0x3e051eb8    # 0.13f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->INTERPOLATOR_PLAY_PAUSE_FADE:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->INTERPOLATOR_ALBUM_COVER_FADE:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/viewpager2/widget/ViewPager2;Ly5/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/viewpager2/widget/ViewPager2;",
            "Ly5/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewPager2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playStateCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p3, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->playStateCallback:Ly5/l;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->uiRatio:F

    new-instance p1, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$AnimationHandle;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    const-string p3, "getMainLooper()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$AnimationHandle;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->animHandler:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$AnimationHandle;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->mainHandler:Landroid/os/Handler;

    const/4 p1, -0x1

    iput p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->widgetId:I

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->latestAlbumIconMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getAnimHandler$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$AnimationHandle;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->animHandler:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$AnimationHandle;

    return-object p0
.end method

.method public static final synthetic access$getDesiredAlbumIcon(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Ln2/b;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->getDesiredAlbumIcon(Ln2/b;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHighResolutionAlbumIcon(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Ln2/b;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->getHighResolutionAlbumIcon(Ln2/b;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getINTERPOLATOR_ALBUM_COVER_FADE$cp()Landroid/view/animation/PathInterpolator;
    .locals 1

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->INTERPOLATOR_ALBUM_COVER_FADE:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method public static final synthetic access$getINTERPOLATOR_PLAY_PAUSE_FADE$cp()Landroid/view/animation/PathInterpolator;
    .locals 1

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->INTERPOLATOR_PLAY_PAUSE_FADE:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getMusicData$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)Ln2/b;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->musicData:Ln2/b;

    return-object p0
.end method

.method public static final synthetic access$getOpenAppConsumer$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)Ljava/util/function/Consumer;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->openAppConsumer:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static final synthetic access$getUiRatio$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)F
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->uiRatio:F

    return p0
.end method

.method public static final synthetic access$getViewPager2$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method public static final synthetic access$getWidgetId$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)I
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->widgetId:I

    return p0
.end method

.method public static final synthetic access$hasAlbumIcon(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Ln2/b;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->hasAlbumIcon(Ln2/b;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isAttachToWindow$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->isAttachToWindow:Z

    return p0
.end method

.method public static final synthetic access$isEqualLastMusic(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Ln2/b;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->isEqualLastMusic(Ln2/b;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$loadAlbumDrawable(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/widget/ImageView;Ln2/b;ILy5/l;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->loadAlbumDrawable(Landroid/widget/ImageView;Ln2/b;ILy5/l;)V

    return-void
.end method

.method public static final synthetic access$setPlayPauseFadeOutAnimation$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->playPauseFadeOutAnimation:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public static final synthetic access$startPlayPauseCoverAnimation(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->startPlayPauseCoverAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private final getDesiredAlbumIcon(Ln2/b;Lq5/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/b;",
            "Lq5/d<",
            "-",
            "Landroid/graphics/drawable/Icon;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;

    iget v1, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;

    invoke-direct {v0, p0, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Lq5/d;)V

    :goto_0
    iget-object p2, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;->result:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;->label:I

    const-string v3, "latestAlbumIconMap"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/b;

    iget-object p1, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ln2/b;

    iget-object v0, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    :try_start_0
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/b;

    iget-object p1, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ln2/b;

    iget-object v2, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-static {p2, v5, v6}, Lkotlinx/coroutines/sync/d;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/b;

    move-result-object p2

    iput-object p0, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;->label:I

    invoke-interface {p2, v6, v0}, Lkotlinx/coroutines/sync/b;->a(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->latestAlbumIconMap:Ljava/util/Map;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln2/b;->e()I

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->latestAlbumIconMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iput-object p0, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getDesiredAlbumIcon$1;->label:I

    invoke-direct {p0, p1, v0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->getHighResolutionAlbumIcon(Ln2/b;Lq5/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v7, v0

    move-object v0, p0

    move-object p0, p2

    move-object p2, v7

    :goto_2
    :try_start_2
    check-cast p2, Landroid/graphics/drawable/Icon;

    if-nez p2, :cond_6

    invoke-virtual {p1}, Ln2/b;->a()Landroid/graphics/drawable/Icon;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    move-object v2, p2

    move-object p2, p0

    move-object p0, v0

    :cond_7
    :try_start_3
    check-cast v2, Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_8

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->latestAlbumIconMap:Ljava/util/Map;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln2/b;->e()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :cond_8
    move-object v2, v6

    :goto_3
    invoke-interface {p2, v6}, Lkotlinx/coroutines/sync/b;->b(Ljava/lang/Object;)V

    return-object v2

    :catchall_1
    move-exception p1

    move-object p0, p2

    :goto_4
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/b;->b(Ljava/lang/Object;)V

    throw p1
.end method

.method private final getHighResolutionAlbumIcon(Ln2/b;Lq5/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/b;",
            "Lq5/d<",
            "-",
            "Landroid/graphics/drawable/Icon;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getHighResolutionAlbumIcon$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getHighResolutionAlbumIcon$1;

    iget v1, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getHighResolutionAlbumIcon$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getHighResolutionAlbumIcon$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getHighResolutionAlbumIcon$1;

    invoke-direct {v0, p0, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getHighResolutionAlbumIcon$1;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Lq5/d;)V

    :goto_0
    iget-object p2, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getHighResolutionAlbumIcon$1;->result:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getHighResolutionAlbumIcon$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Ln5/m;->b(Ljava/lang/Object;)V

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ln2/b;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v2

    invoke-virtual {p1}, Ln2/b;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v3

    const/4 v2, 0x2

    invoke-virtual {p1}, Ln2/b;->d()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-static {p2}, Lo5/j;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object p2, Lcom/nothing/cardwidget/mediaplayer/utils/BitmapUtil;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/BitmapUtil;

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->context:Landroid/content/Context;

    iput v3, v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$getHighResolutionAlbumIcon$1;->label:I

    invoke-virtual {p2, p0, p1, v0}, Lcom/nothing/cardwidget/mediaplayer/utils/BitmapUtil;->getAvailableBitmap(Landroid/content/Context;Ljava/util/List;Lq5/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_4

    invoke-static {p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method private final getViewHolder(I)Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;
    .locals 2

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v1

    :goto_2
    instance-of v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

    if-eqz v0, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

    :cond_3
    if-nez v1, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getViewHolder == null, position: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ViewPagerAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v1
.end method

.method private final hasAlbumIcon(Ln2/b;)Z
    .locals 0

    invoke-virtual {p1}, Ln2/b;->a()Landroid/graphics/drawable/Icon;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ln2/b;->b()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ln2/b;->c()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ln2/b;->d()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final isEqualLastMusic(Ln2/b;)Z
    .locals 1

    invoke-virtual {p1}, Ln2/b;->j()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

    iget p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->widgetId:I

    invoke-virtual {v0, p0}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->getMusicFlag(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final loadAlbumDrawable(Landroid/widget/ImageView;Ln2/b;ILy5/l;)V
    .locals 9
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ln2/b;",
            "I",
            "Ly5/l<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lo2/b;->b()Li6/m0;

    move-result-object v0

    new-instance v8, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p2

    move-object v3, p1

    move-object v4, p0

    move-object v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$loadAlbumDrawable$1;-><init>(Ln2/b;Landroid/widget/ImageView;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Ly5/l;ILq5/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v3, v8

    invoke-static/range {v0 .. v5}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method

.method private final startPlayPauseCoverAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->INTERPOLATOR_PLAY_PAUSE_FADE:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$startPlayPauseCoverAnimation$1$1;

    invoke-direct {v1, p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$startPlayPauseCoverAnimation$1$1;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iput-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->playPauseFadeInAnimation:Landroid/animation/ObjectAnimator;

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final viewHolderItem1()Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->firstPageViewHolder:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->getViewHolder(I)Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->firstPageViewHolder:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

    :cond_0
    return-object v0
.end method

.method private final viewHolderItem2()Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;
    .locals 1

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->secondPageViewHolder:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->getViewHolder(I)Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->secondPageViewHolder:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public final getPlayStateCallback()Ly5/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly5/l<",
            "Ljava/lang/Boolean;",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->playStateCallback:Ly5/l;

    return-object p0
.end method

.method public final onAttached()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->isAttachToWindow:Z

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->viewHolderItem1()Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

    move-result-object p0

    instance-of v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->resumeWaveFormAnimation()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->onBindViewHolder(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;I)V
    .locals 0

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->musicData:Ln2/b;

    invoke-virtual {p1, p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;->bind(Ln2/b;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v2, Lcom/nothing/cardwidget/R$layout;->mediaplayer_first_item:I

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v2, Lcom/nothing/cardwidget/R$layout;->mediaplayer_second_item:I

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final onDetached()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->isAttachToWindow:Z

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->viewHolderItem1()Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

    move-result-object p0

    instance-of v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->cancelWaveFormAnimation()V

    :cond_1
    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->viewHolderItem1()Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;->onVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public final setMusicMetaData(Ln2/b;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->musicData:Ln2/b;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

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

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->openAppConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public final setWidgetId(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->widgetId:I

    return-void
.end method

.method public final updateDisplayRatio(F)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->uiRatio:F

    return-void
.end method

.method public final updateMusicMetaData(Ln2/b;)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->musicData:Ln2/b;

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->viewHolderItem1()Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, v3, v2, v1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;->updateMusicMetaData$default(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;Ln2/b;ZILjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->viewHolderItem2()Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0, p1, v3, v2, v1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;->updateMusicMetaData$default(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;Ln2/b;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final updateMusicPosition(I)V
    .locals 1

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->viewHolderItem2()Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

    move-result-object p0

    instance-of v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->updateMusicPosition(I)V

    :cond_1
    return-void
.end method

.method public final updatePlayBackState(I)V
    .locals 1

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->viewHolderItem1()Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;->updatePlayBackState(I)V

    :cond_0
    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->viewHolderItem2()Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;->updatePlayBackState(I)V

    :cond_1
    return-void
.end method
