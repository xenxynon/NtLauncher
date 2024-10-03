.class final Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$updateSwitchIconByAction$tintNextIcon$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->updateSwitchIconByAction(B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/p<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Float;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$updateSwitchIconByAction$tintNextIcon$1;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$updateSwitchIconByAction$tintNextIcon$1;->invoke(IF)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke(IF)V
    .locals 2

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$updateSwitchIconByAction$tintNextIcon$1;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;

    invoke-static {p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->access$getMediaPlayerView$p(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;)Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "mediaPlayerView"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v1, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    sget v0, Lcom/nothing/cardwidget/R$id;->media_play_next_icon:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    const/16 p0, 0xff

    int-to-float p0, p0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    invoke-static {p1, p0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p2, "wrap(nextIcon)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_3
    return-void
.end method
