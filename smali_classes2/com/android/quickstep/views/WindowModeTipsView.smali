.class public final Lcom/android/quickstep/views/WindowModeTipsView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final relayoutExtraDecoration(Lcom/android/launcher3/touch/PagedOrientationHandler;ZLandroid/graphics/Rect;)V
    .locals 7

    const-string v0, "orientationHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iput-boolean v2, v1, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->isLayoutNaturalToLauncher()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget p3, p3, Landroid/graphics/Rect;->top:I

    const v3, 0x7f07044d

    goto :goto_1

    :cond_1
    const v3, 0x7f07044c

    move p3, v4

    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr p3, v3

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v3

    if-eq v3, v2, :cond_2

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07044b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070450

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v0, 0x31

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v4, p3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_5

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07044a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07044f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, p3

    if-nez p2, :cond_3

    const p3, 0x800003

    goto :goto_2

    :cond_3
    const p3, 0x800005

    :goto_2
    or-int/lit8 p3, p3, 0x10

    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v3, v2, :cond_4

    move p3, v4

    goto :goto_3

    :cond_4
    neg-int p3, v5

    :goto_3
    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-ne v3, v2, :cond_5

    neg-int v0, v5

    goto :goto_4

    :cond_5
    move v0, v4

    :goto_4
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, p3, v4, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :cond_6
    :goto_5
    xor-int/2addr p2, v2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRotation(F)V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method
