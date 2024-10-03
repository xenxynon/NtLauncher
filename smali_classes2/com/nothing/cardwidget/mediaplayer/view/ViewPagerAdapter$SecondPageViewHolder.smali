.class public final Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;
.super Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SecondPageViewHolder"
.end annotation


# instance fields
.field private albumIconLayout:Lcom/nothing/cardwidget/RoundCornersFrameLayout;

.field private albumSmallIcon:Landroid/widget/ImageView;

.field private appIcon:Landroid/widget/ImageView;

.field private artistAndAlbumName:Landroid/widget/TextView;

.field private isPlaying:Z

.field private musicName:Landroid/widget/TextView;

.field private musicNameLayout:Landroid/widget/LinearLayout;

.field private playPauseCover:Landroid/widget/ImageView;

.field private playState:I

.field private progressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-direct {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V

    sget v0, Lcom/nothing/cardwidget/R$id;->music_album_small_icon_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.\u2026_album_small_icon_layout)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/nothing/cardwidget/RoundCornersFrameLayout;

    iput-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->albumIconLayout:Lcom/nothing/cardwidget/RoundCornersFrameLayout;

    sget v0, Lcom/nothing/cardwidget/R$id;->play_pause_cover:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.play_pause_cover)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->playPauseCover:Landroid/widget/ImageView;

    sget v0, Lcom/nothing/cardwidget/R$id;->music_album_small_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.music_album_small_icon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->albumSmallIcon:Landroid/widget/ImageView;

    sget v0, Lcom/nothing/cardwidget/R$id;->second_music_app_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.second_music_app_icon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->appIcon:Landroid/widget/ImageView;

    sget v0, Lcom/nothing/cardwidget/R$id;->music_name_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.music_name_layout)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->musicNameLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/nothing/cardwidget/R$id;->music_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.music_name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->musicName:Landroid/widget/TextView;

    sget v0, Lcom/nothing/cardwidget/R$id;->artist_album_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.artist_album_name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->artistAndAlbumName:Landroid/widget/TextView;

    sget v0, Lcom/nothing/cardwidget/R$id;->music_position_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.music_position_bar)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$getViewPager2$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    new-instance p2, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder$1;

    invoke-direct {p2, p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder$1;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method public static synthetic a(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;Landroid/widget/ImageView;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->updateMusicMetaData$lambda-6$lambda-5(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;Landroid/widget/ImageView;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getMusicName$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->musicName:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getMusicNameLayout$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->musicNameLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic b(Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->updateMusicMetaData$lambda-9$lambda-8(Landroid/widget/TextView;)V

    return-void
.end method

.method private final bindViewData(Ln2/b;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->updateMusicMetaData(Ln2/b;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->onAlbumArtClick$lambda-1(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->setArtistAndAlbumName$lambda-17$lambda-16(Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic e(Landroid/widget/ImageView;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->updateMusicMetaData$lambda-6$lambda-4(Landroid/widget/ImageView;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static final onAlbumArtClick$lambda-1(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V
    .locals 4

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$1"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->playPauseCover:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p2, :cond_1

    return-void

    :cond_1
    sget-object p2, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;->Companion:Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;

    iget v2, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->playState:I

    invoke-virtual {p2, v2}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;->isConnected(I)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$getMusicData$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)Ln2/b;

    move-result-object p1

    invoke-virtual {p0, p2, p1, v1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;->openApp(Landroid/content/Context;Ln2/b;Z)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->playPauseCover:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->isPlaying:Z

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nothing/cardwidget/R$drawable;->music_pause_small_icon:I

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nothing/cardwidget/R$drawable;->music_play_small_icon:I

    :goto_1
    invoke-static {v2, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$startPlayPauseCoverAnimation(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->getPlayStateCallback()Ly5/l;

    move-result-object p1

    iget-boolean p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->isPlaying:Z

    xor-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final setArtistAndAlbumName(Ln2/b;)V
    .locals 2

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->artistAndAlbumName:Landroid/widget/TextView;

    invoke-virtual {p1}, Ln2/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ln2/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    invoke-virtual {p1}, Ln2/b;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ln2/b;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ln2/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ln2/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ln2/b;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ln2/b;->f()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/nothing/cardwidget/mediaplayer/view/n;

    invoke-direct {p1, p0}, Lcom/nothing/cardwidget/mediaplayer/view/n;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final setArtistAndAlbumName$lambda-17$lambda-16(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method private final tintAppIconColor(Landroid/graphics/Bitmap;Ly5/l;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ly5/l<",
            "-",
            "Landroid/graphics/Bitmap;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/utils/BitmapUtil;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/BitmapUtil;

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/nothing/cardwidget/R$color;->color_app_icon_default:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/nothing/cardwidget/mediaplayer/utils/BitmapUtil;->colorizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-interface {p2, p0}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final updateMusicMetaData$lambda-6$lambda-4(Landroid/widget/ImageView;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    sget-object v1, Lcom/nothing/cardwidget/mediaplayer/utils/BitmapUtil;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/BitmapUtil;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/nothing/cardwidget/mediaplayer/utils/BitmapUtil;->drawableToBitmap$default(Lcom/nothing/cardwidget/mediaplayer/utils/BitmapUtil;Landroid/graphics/drawable/Drawable;IIILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder$updateMusicMetaData$1$1$1$1$1;

    invoke-direct {v0, p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder$updateMusicMetaData$1$1$1$1$1;-><init>(Landroid/widget/ImageView;)V

    invoke-direct {p1, p2, v0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->tintAppIconColor(Landroid/graphics/Bitmap;Ly5/l;)V

    :cond_0
    return-void
.end method

.method private static final updateMusicMetaData$lambda-6$lambda-5(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;Landroid/widget/ImageView;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/view/View;)V
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$this_with"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$1"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;->Companion:Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;

    iget v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->playState:I

    invoke-virtual {p3, v0}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;->isConnected(I)Z

    move-result p3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$getMusicData$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)Ln2/b;

    move-result-object p2

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$MediaItemViewHolder;->openApp(Landroid/content/Context;Ln2/b;Z)V

    return-void
.end method

.method private static final updateMusicMetaData$lambda-9$lambda-8(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public bind(Ln2/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->bindViewData(Ln2/b;)V

    invoke-virtual {p0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->onAlbumArtClick()V

    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-static {p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$getUiRatio$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->updateDisplayRatio(F)V

    return-void
.end method

.method public onAlbumArtClick()V
    .locals 3

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->albumSmallIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    new-instance v2, Lcom/nothing/cardwidget/mediaplayer/view/l;

    invoke-direct {v2, p0, v1}, Lcom/nothing/cardwidget/mediaplayer/view/l;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateDisplayRatio(F)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDisplayRatio second page ratio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewPagerAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->albumIconLayout:Lcom/nothing/cardwidget/RoundCornersFrameLayout;

    const/16 v1, 0xb8

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, La6/a;->b(F)I

    move-result v1

    sget-object v8, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v2, v1}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewSize(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/16 v1, 0x2a

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, La6/a;->b(F)I

    move-result v2

    const-string v9, "layout_marginStart"

    invoke-virtual {v8, v0, v9, v2}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-static {v1}, La6/a;->b(F)I

    move-result v2

    const-string v10, "layout_marginTop"

    invoke-virtual {v8, v0, v10, v2}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->appIcon:Landroid/widget/ImageView;

    const/16 v2, 0x7e

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, La6/a;->b(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v3, v2}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewSize(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/16 v2, 0x1a

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, La6/a;->b(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, v8

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewPadding(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const/16 v2, 0xb

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, La6/a;->b(F)I

    move-result v2

    invoke-virtual {v8, v0, v10, v2}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    const-string v3, "layout_marginEnd"

    invoke-virtual {v8, v0, v3, v2}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->musicNameLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x20

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, La6/a;->b(F)I

    move-result v4

    invoke-static {v1}, La6/a;->b(F)I

    move-result v5

    invoke-virtual {v8, v0, v10, v4}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v8, v0, v9, v5}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v8, v0, v3, v5}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->musicName:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->artistAndAlbumName:Landroid/widget/TextView;

    const/16 v5, 0x25

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-static {v2}, La6/a;->b(F)I

    move-result p1

    invoke-static {v1}, La6/a;->b(F)I

    move-result v0

    invoke-virtual {v8, p0, v10, p1}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v8, p0, v9, v0}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v8, p0, v3, v0}, Lcom/nothing/cardwidget/mediaplayer/utils/DisplayUtil;->setViewMargin(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public updateMusicMetaData(Ln2/b;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    invoke-virtual {p1}, Ln2/b;->g()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Ln2/b;->g()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/nothing/cardwidget/mediaplayer/view/j;

    invoke-direct {v3, p2, p0}, Lcom/nothing/cardwidget/mediaplayer/view/j;-><init>(Landroid/widget/ImageView;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;)V

    invoke-static {v0}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$getMainHandler$p(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    new-instance v1, Lcom/nothing/cardwidget/mediaplayer/view/k;

    invoke-direct {v1, p0, p2, v0}, Lcom/nothing/cardwidget/mediaplayer/view/k;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;Landroid/widget/ImageView;Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->albumSmallIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;

    sget v1, Lcom/nothing/cardwidget/R$drawable;->album_cover_small_icon:I

    new-instance v2, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder$updateMusicMetaData$2$1;

    invoke-direct {v2, p2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder$updateMusicMetaData$2$1;-><init>(Landroid/widget/ImageView;)V

    invoke-static {v0, p2, p1, v1, v2}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;->access$loadAlbumDrawable(Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter;Landroid/widget/ImageView;Ln2/b;ILy5/l;)V

    iget-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->musicName:Landroid/widget/TextView;

    invoke-virtual {p1}, Ln2/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/view/m;

    invoke-direct {v0, p2}, Lcom/nothing/cardwidget/mediaplayer/view/m;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->setArtistAndAlbumName(Ln2/b;)V

    return-void
.end method

.method public final updateMusicPosition(I)V
    .locals 1

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/ProgressBar;->setProgress(IZ)V

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

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState;->Companion:Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;

    invoke-virtual {v0, p1}, Lcom/nothing/cardwidget/mediaplayer/entity/MusicPlaybackState$Companion;->isPlaying(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->isPlaying:Z

    iput p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$SecondPageViewHolder;->playState:I

    return-void
.end method
