.class public final Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;
.super Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FirstPageViewHolder"
.end annotation


# instance fields
.field private albumCover0:Landroid/widget/ImageView;

.field private albumCover1:Landroid/widget/ImageView;

.field private albumCoverDefault:Landroid/widget/ImageView;

.field private isPlaying:Z

.field private musicWaveformAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private playPauseCoverLayout:Landroid/widget/FrameLayout;

.field private playPauseIcon:Landroid/widget/ImageView;

.field private playState:I

.field final synthetic this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-direct {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V

    sget p1, Lcom/nothing/cardwidget/R$id;->music_album_cover_default:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.\u2026usic_album_cover_default)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCoverDefault:Landroid/widget/ImageView;

    sget p1, Lcom/nothing/cardwidget/R$id;->music_album_cover_state_0:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.\u2026usic_album_cover_state_0)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCover0:Landroid/widget/ImageView;

    sget p1, Lcom/nothing/cardwidget/R$id;->music_album_cover_state_1:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.\u2026usic_album_cover_state_1)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCover1:Landroid/widget/ImageView;

    sget p1, Lcom/nothing/cardwidget/R$id;->music_waveform:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.music_waveform)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->musicWaveformAnim:Lcom/airbnb/lottie/LottieAnimationView;

    sget p1, Lcom/nothing/cardwidget/R$id;->play_pause_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.play_pause_icon)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->playPauseIcon:Landroid/widget/ImageView;

    sget p1, Lcom/nothing/cardwidget/R$id;->play_pause_cover_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.\u2026.play_pause_cover_layout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->playPauseCoverLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->onAlbumArtClick$lambda-2(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getAlbumCover0$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCover0:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic access$getAlbumCover1$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCover1:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic access$tintWaveFormColor(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->tintWaveFormColor(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic b(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->onAlbumArtClick$lambda-3(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Landroid/graphics/drawable/Drawable;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->tintWaveFormColor$lambda-16(Landroid/graphics/drawable/Drawable;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;I)V

    return-void
.end method

.method public static synthetic d(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->onAlbumArtClick$lambda-1(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(ILcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->tintWaveFormColor$lambda-16$lambda-15$lambda-14(ILcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;ILandroidx/palette/graphics/Palette;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->tintWaveFormColor$lambda-16$lambda-13$lambda-12$lambda-11(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;ILandroidx/palette/graphics/Palette;)V

    return-void
.end method

.method public static synthetic g(ILcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->tintWaveFormColor$lambda-16$lambda-13$lambda-12$lambda-11$lambda-10$lambda-9(ILcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static final onAlbumArtClick$lambda-1(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$1"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->onAlbumArtClick$onClick(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)V

    return-void
.end method

.method private static final onAlbumArtClick$lambda-2(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$1"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->onAlbumArtClick$onClick(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)V

    return-void
.end method

.method private static final onAlbumArtClick$lambda-3(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$1"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->onAlbumArtClick$onClick(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)V

    return-void
.end method

.method private static final onAlbumArtClick$onClick(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)V
    .locals 5

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->playPauseCoverLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;->Companion:Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;

    iget v3, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->playState:I

    invoke-virtual {v0, v3}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;->isConnected(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$getMusicData$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)Ln2/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;->openApp(Landroid/content/Context;Ln2/b;Z)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->playPauseIcon:Landroid/widget/ImageView;

    iget v4, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->playState:I

    invoke-virtual {v0, v4}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;->isPlaying(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/nothing/cardwidget/R$drawable;->music_first_item_pause_icon:I

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/nothing/cardwidget/R$drawable;->music_first_item_play_icon:I

    :goto_1
    invoke-static {v0, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->playPauseCoverLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static {p1, v0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$startPlayPauseCoverAnimation(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->getPlayStateCallback()Ly5/l;

    move-result-object p1

    iget-boolean p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->isPlaying:Z

    xor-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final playWaveformAnim(Z)V
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-static {v0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$isAttachToWindow$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->musicWaveformAnim:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    if-eqz p1, :cond_2

    sget-object p1, Lcom/nothing/cardwidget/util/UiUtil;->INSTANCE:Lcom/nothing/cardwidget/util/UiUtil;

    invoke-virtual {v1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nothing/cardwidget/util/UiUtil;->isDarkTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/nothing/cardwidget/R$raw;->music_waveform_play_dark:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/nothing/cardwidget/R$raw;->music_waveform_play_light:I

    :goto_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/nothing/cardwidget/util/UiUtil;->INSTANCE:Lcom/nothing/cardwidget/util/UiUtil;

    invoke-virtual {v1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nothing/cardwidget/util/UiUtil;->isDarkTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/nothing/cardwidget/R$raw;->music_waveform_pause_dark:I

    goto :goto_1

    :cond_3
    sget p1, Lcom/nothing/cardwidget/R$raw;->music_waveform_pause_light:I

    :goto_1
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    :goto_2
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCover0:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->tintWaveFormColor(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final runAlbumCoverAnimation(Ln2/b;Z)V
    .locals 4

    const-string v0, "ViewPagerAdapter"

    const-string v1, "runAlbumCoverAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-static {v0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$hasAlbumIcon(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Ln2/b;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object p2, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-static {v0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$getWidgetId$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->markMusicFlag(ILn2/b;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCoverDefault:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCover0:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCover0:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCover1:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCover1:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->tintWaveFormColor(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCoverDefault:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-static {v0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$isEqualLastMusic(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Ln2/b;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    sget-object p2, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-static {v0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$getWidgetId$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->markMusicFlag(ILn2/b;)V

    iget-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCover1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCover0:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "drawable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCover0:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    sget v1, Lcom/nothing/cardwidget/R$drawable;->music_album_cover_icon_default:I

    new-instance v3, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder$runAlbumCoverAnimation$2$1;

    invoke-direct {v3, p2, p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder$runAlbumCoverAnimation$2$1;-><init>(Landroid/widget/ImageView;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;)V

    invoke-static {v0, p2, p1, v1, v3}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$loadAlbumDrawable(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/widget/ImageView;Ln2/b;ILy5/l;)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCover1:Landroid/widget/ImageView;

    const/4 p2, 0x2

    new-array v0, p2, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCover0:Landroid/widget/ImageView;

    new-array p2, p2, [F

    fill-array-data p2, :array_1

    invoke-static {v0, v1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$getINTERPOLATOR_ALBUM_COVER_FADE$cp()Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p1, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder$runAlbumCoverAnimation$3$1;

    invoke-direct {p1, p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder$runAlbumCoverAnimation$3$1;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-static {v0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$getWidgetId$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->markMusicFlag(ILn2/b;)V

    iget-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCover0:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v1, Lcom/nothing/cardwidget/R$drawable;->music_album_cover_icon_default:I

    new-instance v2, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder$runAlbumCoverAnimation$4$1;

    invoke-direct {v2, p2, p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder$runAlbumCoverAnimation$4$1;-><init>(Landroid/widget/ImageView;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;)V

    invoke-static {v0, p2, p1, v1, v2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$loadAlbumDrawable(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/widget/ImageView;Ln2/b;ILy5/l;)V

    :goto_0
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

.method private final tintWaveFormColor(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nothing/cardwidget/R$color;->color_music_waveform_default:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-static {v1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$getViewPager2$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    new-instance v2, Lcom/nothing/cardwidget/mediaplayer/view/i;

    invoke-direct {v2, p1, p0, v0}, Lcom/nothing/cardwidget/mediaplayer/view/i;-><init>(Landroid/graphics/drawable/Drawable;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final tintWaveFormColor$getTintColor(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;ILandroidx/palette/graphics/Palette;)I
    .locals 0

    invoke-virtual {p2}, Landroidx/palette/graphics/Palette;->getDominantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Landroidx/palette/graphics/Palette;->getLightMutedSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Landroidx/palette/graphics/Palette;->getDarkMutedSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Landroidx/palette/graphics/Palette;->getVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->getBodyTextColor()I

    move-result p1

    :cond_1
    return p1
.end method

.method private static final tintWaveFormColor$lambda-16(Landroid/graphics/drawable/Drawable;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;I)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x7e

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v3, 0x89

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {v0, v2, v1, v3, p0}, Landroidx/palette/graphics/Palette$Builder;->setRegion(IIII)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Builder;->clearFilters()Landroidx/palette/graphics/Palette$Builder;

    move-result-object p0

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/view/f;

    invoke-direct {v0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/f;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;I)V

    invoke-virtual {p0, v0}, Landroidx/palette/graphics/Palette$Builder;->generate(Landroidx/palette/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    move-result-object p0

    move-object v0, p0

    :cond_1
    if-nez v0, :cond_2

    iget-object p0, p1, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->musicWaveformAnim:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance p1, Lcom/airbnb/lottie/model/KeyPath;

    const-string v0, "**"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v1, Lcom/nothing/cardwidget/mediaplayer/view/g;

    invoke-direct {v1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/g;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    :cond_2
    return-void
.end method

.method private static final tintWaveFormColor$lambda-16$lambda-13$lambda-12$lambda-11(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;ILandroidx/palette/graphics/Palette;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->tintWaveFormColor$getTintColor(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;ILandroidx/palette/graphics/Palette;)I

    move-result p1

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->musicWaveformAnim:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance p2, Lcom/airbnb/lottie/model/KeyPath;

    const-string v0, "**"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    new-instance v1, Lcom/nothing/cardwidget/mediaplayer/view/h;

    invoke-direct {v1, p1}, Lcom/nothing/cardwidget/mediaplayer/view/h;-><init>(I)V

    invoke-virtual {p0, p2, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    return-void
.end method

.method private static final tintWaveFormColor$lambda-16$lambda-13$lambda-12$lambda-11$lambda-10$lambda-9(ILcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static final tintWaveFormColor$lambda-16$lambda-15$lambda-14(ILcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;
    .locals 1

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p0, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method


# virtual methods
.method public bind(Ln2/b;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->updateMusicMetaData(Ln2/b;Z)V

    invoke-virtual {p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->onAlbumArtClick()V

    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-static {p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$getUiRatio$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->updateDisplayRatio(F)V

    return-void
.end method

.method public final cancelWaveFormAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->musicWaveformAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    return-void
.end method

.method public onAlbumArtClick()V
    .locals 3

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCoverDefault:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    new-instance v2, Lcom/nothing/cardwidget/mediaplayer/view/e;

    invoke-direct {v2, p0, v1}, Lcom/nothing/cardwidget/mediaplayer/view/e;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCover0:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    new-instance v2, Lcom/nothing/cardwidget/mediaplayer/view/c;

    invoke-direct {v2, p0, v1}, Lcom/nothing/cardwidget/mediaplayer/view/c;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCover1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    new-instance v2, Lcom/nothing/cardwidget/mediaplayer/view/d;

    invoke-direct {v2, p0, v1}, Lcom/nothing/cardwidget/mediaplayer/view/d;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->isPlaying:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->playWaveformAnim(Z)V

    return-void
.end method

.method public final resumeWaveFormAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->isPlaying:Z

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->playWaveformAnim(Z)V

    return-void
.end method

.method public updateDisplayRatio(F)V
    .locals 4

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->musicWaveformAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x7e

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, La6/a;->b(F)I

    move-result v1

    sget-object v2, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewSize(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/16 v1, 0xb

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, La6/a;->b(F)I

    move-result v1

    const-string v3, "layout_marginStart"

    invoke-virtual {v2, v0, v3, v1}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    const-string v3, "layout_marginBottom"

    invoke-virtual {v2, v0, v3, v1}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->albumCoverDefault:Landroid/widget/ImageView;

    const/16 v0, 0xbd

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, La6/a;->b(F)I

    move-result v0

    const/16 v1, 0xa8

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, La6/a;->b(F)I

    move-result p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p0, v0, p1}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewSize(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public updateMusicMetaData(Ln2/b;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->runAlbumCoverAnimation(Ln2/b;Z)V

    :cond_0
    return-void
.end method

.method public updatePlayBackState(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePlayBackState playState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewPagerAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->playState:I

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;->Companion:Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;->isPlaying(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->isPlaying:Z

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;->isPlaying(I)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->playWaveformAnim(Z)V

    return-void
.end method
