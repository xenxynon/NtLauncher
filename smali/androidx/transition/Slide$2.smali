.class Landroidx/transition/Slide$2;
.super Landroidx/transition/Slide$CalculateSlideHorizontal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/transition/Slide$CalculateSlideHorizontal;-><init>(Landroidx/transition/Slide$1;)V

    return-void
.end method


# virtual methods
.method public getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    if-eqz v0, :cond_1

    add-float/2addr p0, p1

    goto :goto_1

    :cond_1
    sub-float/2addr p0, p1

    :goto_1
    return p0
.end method
