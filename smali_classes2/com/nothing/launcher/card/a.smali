.class public abstract Lcom/nothing/launcher/card/a;
.super Lcom/nothing/launcher/card/u;
.source "SourceFile"

# interfaces
.implements Lcom/nothing/launcher/widget/a;


# instance fields
.field private final Q:Landroid/view/LayoutInflater;

.field private final R:Landroid/graphics/Rect;

.field private S:F

.field private T:F

.field private final U:Landroid/view/ViewOutlineProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lw1/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/nothing/launcher/card/u;-><init>(Landroid/content/Context;Lw1/a;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/nothing/launcher/card/a;->Q:Landroid/view/LayoutInflater;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/nothing/launcher/card/a;->R:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2, p2}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeWidgetRadiusWithProfile(Landroid/content/Context;II)F

    move-result p1

    iput p1, p0, Lcom/nothing/launcher/card/a;->S:F

    iput p1, p0, Lcom/nothing/launcher/card/a;->T:F

    new-instance p1, Lcom/nothing/launcher/card/a$a;

    invoke-direct {p1, p0}, Lcom/nothing/launcher/card/a$a;-><init>(Lcom/nothing/launcher/card/a;)V

    iput-object p1, p0, Lcom/nothing/launcher/card/a;->U:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lw1/a;ILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/nothing/launcher/card/a;-><init>(Landroid/content/Context;Lw1/a;)V

    return-void
.end method

.method public static final synthetic b0(Lcom/nothing/launcher/card/a;)F
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/card/a;->T:F

    return p0
.end method

.method public static final synthetic c0(Lcom/nothing/launcher/card/a;)F
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/card/a;->S:F

    return p0
.end method

.method public static final synthetic d0(Lcom/nothing/launcher/card/a;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/card/a;->R:Landroid/graphics/Rect;

    return-object p0
.end method

.method private final e0()V
    .locals 8
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget v0, p0, Lcom/nothing/launcher/card/a;->S:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_a

    invoke-static {}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->isRoundedCornerEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->findBackground(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {p0, v0}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->hasAppWidgetOptedOut(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/nothing/launcher/card/a;->R:Landroid/graphics/Rect;

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeRoundedRectangle(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/nothing/launcher/card/u;->getScaleToFit()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/nothing/launcher/card/a;->R:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_3

    iget-object v4, p0, Lcom/nothing/launcher/card/a;->R:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    if-nez v1, :cond_5

    if-nez v2, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/nothing/launcher/card/u;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v1

    instance-of v1, v1, Lg3/b;

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/nothing/launcher/card/a;->R:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getClipToOutline()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    invoke-virtual {v0}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    invoke-virtual {v1}, Landroid/graphics/Outline;->getRadius()F

    move-result v0

    iput v0, p0, Lcom/nothing/launcher/card/a;->T:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CardView:Background view has config outline provider, update the radius = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nothing/launcher/card/a;->T:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AERO-5645"

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/nothing/launcher/card/a;->U:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    return-void

    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/nothing/launcher/card/a;->f0()V

    return-void

    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/nothing/launcher/card/a;->f0()V

    return-void
.end method

.method private final f0()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    return-void
.end method


# virtual methods
.method public applyDisplaySpan(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeWidgetRadiusWithProfile(Landroid/content/Context;II)F

    move-result v0

    iput v0, p0, Lcom/nothing/launcher/card/a;->S:F

    invoke-super {p0, p1, p2}, Lcom/nothing/launcher/card/u;->applyDisplaySpan(II)V

    return-void
.end method

.method public beginDeferringUpdates()V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/widget/a$a;->a(Lcom/nothing/launcher/widget/a;)V

    return-void
.end method

.method public endDeferringUpdates()V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/widget/a$a;->b(Lcom/nothing/launcher/widget/a;)V

    return-void
.end method

.method public getEnforcedCornerRadius()F
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/card/a;->S:F

    return p0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/nothing/launcher/card/a;->Q:Landroid/view/LayoutInflater;

    const v1, 0x7f0e003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string v0, "inflater.inflate(R.layou\u2026idget_error, this, false)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/card/a;->getView()Lcom/nothing/launcher/card/a;

    move-result-object p0

    return-object p0
.end method

.method public getView()Lcom/nothing/launcher/card/a;
    .locals 0

    return-object p0
.end method

.method public hasEnforcedCornerRadius()Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipToOutline()Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/nothing/cardhost/e;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/nothing/launcher/card/a;->e0()V

    return-void
.end method
