.class public final Lcom/nothing/cardwidget/NTPageIndicatorDot;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/NTPageIndicatorDot$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardwidget/NTPageIndicatorDot$Companion;

.field private static final ORIENTATION_HORIZONTAL:I = 0x0

.field private static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NTPageIndicatorDot"


# instance fields
.field private final adapterDataObserver:Lcom/nothing/cardwidget/NTPageIndicatorDot$adapterDataObserver$1;

.field private final fadeout:Ljava/lang/Runnable;

.field private mAppearBegin:Z

.field private final mDefaultPaint:Landroid/graphics/Paint;

.field private mDotMargin:F

.field private final mDotPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mDotRadius:F

.field private mFadeDelay:I

.field private mFadeDots:Z

.field private mFadeOutAnimation:Landroid/view/animation/Animation;

.field private mOrientation:I

.field private mPosition:I

.field private mPositionOffset:F

.field private final mRTL:Z

.field private final mSelectPaint:Landroid/graphics/Paint;

.field private mViewPager:Landroidx/viewpager2/widget/ViewPager2;

.field private final pageObserver:Lcom/nothing/cardwidget/NTPageIndicatorDot$pageObserver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/NTPageIndicatorDot$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/NTPageIndicatorDot$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->Companion:Lcom/nothing/cardwidget/NTPageIndicatorDot$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDefaultPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mSelectPaint:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mAppearBegin:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mPosition:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mPositionOffset:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDotPosition:Ljava/util/ArrayList;

    new-instance v0, Lcom/nothing/cardwidget/b;

    invoke-direct {v0, p0}, Lcom/nothing/cardwidget/b;-><init>(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V

    iput-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->fadeout:Ljava/lang/Runnable;

    new-instance v0, Lcom/nothing/cardwidget/NTPageIndicatorDot$adapterDataObserver$1;

    invoke-direct {v0, p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot$adapterDataObserver$1;-><init>(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V

    iput-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->adapterDataObserver:Lcom/nothing/cardwidget/NTPageIndicatorDot$adapterDataObserver$1;

    new-instance v0, Lcom/nothing/cardwidget/NTPageIndicatorDot$pageObserver$1;

    invoke-direct {v0, p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot$pageObserver$1;-><init>(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V

    iput-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->pageObserver:Lcom/nothing/cardwidget/NTPageIndicatorDot$pageObserver$1;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mRTL:Z

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    const/16 v3, 0x8

    new-array v3, v3, [Ln5/k;

    const-string v4, "dotRadius"

    invoke-virtual {v0, p1, v4}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/nothing/cardwidget/R$attr;->dotRadius:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "dotMargin"

    invoke-virtual {v0, p1, v4}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/nothing/cardwidget/R$attr;->dotMargin:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v5, "dotFadeDots"

    invoke-virtual {v0, p1, v5}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/nothing/cardwidget/R$attr;->dotFadeDots:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "dotOrientation"

    invoke-virtual {v0, p1, v5}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/nothing/cardwidget/R$attr;->dotOrientation:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "dotFadeDelay"

    invoke-virtual {v0, p1, v5}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/nothing/cardwidget/R$attr;->dotFadeDelay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "dotAppearBegin"

    invoke-virtual {v0, p1, v5}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/nothing/cardwidget/R$attr;->dotAppearBegin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "dotDefaultColor"

    invoke-virtual {v0, p1, v5}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/nothing/cardwidget/R$attr;->dotDefaultColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "dotSelectColor"

    invoke-virtual {v0, p1, v5}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/nothing/cardwidget/R$attr;->dotSelectColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lo5/d0;->h([Ln5/k;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Lk2/a$a;->k(Landroid/util/AttributeSet;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget v5, Lcom/nothing/cardwidget/R$attr;->dotRadius:I

    if-ne v4, v5, :cond_2

    sget-object v4, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v4, p1, p2, v3}, Lk2/a$a;->f(Landroid/content/Context;Landroid/util/AttributeSet;I)F

    move-result v3

    iput v3, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDotRadius:F

    goto :goto_1

    :cond_2
    sget v5, Lcom/nothing/cardwidget/R$attr;->dotMargin:I

    if-ne v4, v5, :cond_3

    sget-object v4, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v4, p1, p2, v3}, Lk2/a$a;->f(Landroid/content/Context;Landroid/util/AttributeSet;I)F

    move-result v3

    iput v3, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDotMargin:F

    goto :goto_1

    :cond_3
    sget v5, Lcom/nothing/cardwidget/R$attr;->dotFadeDots:I

    if-ne v4, v5, :cond_4

    sget-object v4, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v4, p1, p2, v3, v2}, Lk2/a$a;->d(Landroid/content/Context;Landroid/util/AttributeSet;IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mFadeDots:Z

    goto :goto_1

    :cond_4
    sget v5, Lcom/nothing/cardwidget/R$attr;->dotOrientation:I

    if-ne v4, v5, :cond_5

    sget-object v4, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v4, p1, p2, v3, v2}, Lk2/a$a;->i(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v3

    iput v3, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mOrientation:I

    goto :goto_1

    :cond_5
    sget v5, Lcom/nothing/cardwidget/R$attr;->dotFadeDelay:I

    if-ne v4, v5, :cond_6

    sget-object v4, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v4, p1, p2, v3, v2}, Lk2/a$a;->i(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v3

    iput v3, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mFadeDelay:I

    goto/16 :goto_1

    :cond_6
    sget v5, Lcom/nothing/cardwidget/R$attr;->dotAppearBegin:I

    if-ne v4, v5, :cond_7

    sget-object v4, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v4, p1, p2, v3, v1}, Lk2/a$a;->d(Landroid/content/Context;Landroid/util/AttributeSet;IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mAppearBegin:Z

    goto/16 :goto_1

    :cond_7
    sget v5, Lcom/nothing/cardwidget/R$attr;->dotDefaultColor:I

    if-ne v4, v5, :cond_8

    sget-object v4, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v4, p1, p2, v3}, Lk2/a$a;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v3

    iget-object v4, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDefaultPaint:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    :cond_8
    sget v5, Lcom/nothing/cardwidget/R$attr;->dotSelectColor:I

    if-ne v4, v5, :cond_1

    sget-object v4, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v4, p1, p2, v3}, Lk2/a$a;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v3

    iget-object v4, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mSelectPaint:Landroid/graphics/Paint;

    goto :goto_2

    :cond_9
    iget-boolean p1, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mFadeDots:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mAppearBegin:Z

    if-nez p1, :cond_a

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_a
    return-void
.end method

.method public static synthetic a(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->fadeout$lambda-2(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V

    return-void
.end method

.method public static final synthetic access$cancelFadeout(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->cancelFadeout()V

    return-void
.end method

.method public static final synthetic access$getFadeout$p(Lcom/nothing/cardwidget/NTPageIndicatorDot;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->fadeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getMFadeDelay$p(Lcom/nothing/cardwidget/NTPageIndicatorDot;)I
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mFadeDelay:I

    return p0
.end method

.method public static final synthetic access$getMFadeDots$p(Lcom/nothing/cardwidget/NTPageIndicatorDot;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mFadeDots:Z

    return p0
.end method

.method public static final synthetic access$getMPosition$p(Lcom/nothing/cardwidget/NTPageIndicatorDot;)I
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mPosition:I

    return p0
.end method

.method public static final synthetic access$getMPositionOffset$p(Lcom/nothing/cardwidget/NTPageIndicatorDot;)F
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mPositionOffset:F

    return p0
.end method

.method public static final synthetic access$hideIndicator(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->hideIndicator()V

    return-void
.end method

.method public static final synthetic access$invalidateDot(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->invalidateDot()V

    return-void
.end method

.method public static final synthetic access$setMPosition$p(Lcom/nothing/cardwidget/NTPageIndicatorDot;I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mPosition:I

    return-void
.end method

.method public static final synthetic access$setMPositionOffset$p(Lcom/nothing/cardwidget/NTPageIndicatorDot;F)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mPositionOffset:F

    return-void
.end method

.method private final calculatePosition()V
    .locals 11

    iget-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDotPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x2

    if-ge v1, v2, :cond_3

    iget-object v7, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDotPosition:Ljava/util/ArrayList;

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-ge v1, v7, :cond_2

    iget v7, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mOrientation:I

    if-nez v7, :cond_0

    int-to-float v9, v6

    iget v10, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDotRadius:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDotMargin:F

    add-float/2addr v9, v10

    goto :goto_1

    :cond_0
    move v9, v3

    :goto_1
    add-float/2addr v4, v9

    if-ne v7, v8, :cond_1

    int-to-float v6, v6

    iget v7, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDotRadius:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDotMargin:F

    add-float/2addr v6, v7

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_2
    add-float/2addr v5, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mRTL:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDotPosition:Ljava/util/ArrayList;

    invoke-static {v0}, Lo5/j;->y(Ljava/util/List;)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v4

    int-to-float v1, v6

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v5

    div-float/2addr v2, v1

    iget-object p0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDotPosition:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method private final cancelFadeout()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->fadeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mFadeOutAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mFadeOutAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_2
    invoke-direct {p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->showIndicator()V

    return-void
.end method

.method private static final fadeout$lambda-2(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->startFadeout()V

    return-void
.end method

.method private final hideIndicator()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private final invalidateDot()V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->calculatePosition()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final showIndicator()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private final startFadeout()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->fadeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mFadeOutAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lk2/a;->a:Lk2/a$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "page_indicator_fade_out"

    invoke-virtual {v1, v2, v3}, Lk2/a$a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mFadeOutAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :goto_0
    iget-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    new-instance v1, Lcom/nothing/cardwidget/NTPageIndicatorDot$startFadeout$1;

    invoke-direct {v1, p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot$startFadeout$1;-><init>(Lcom/nothing/cardwidget/NTPageIndicatorDot;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mFadeDots:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mAppearBegin:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->fadeout:Ljava/lang/Runnable;

    iget p0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mFadeDelay:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDotPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDotPosition:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "mDotPosition[i]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDotRadius:F

    iget-object v7, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDefaultPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mPosition:I

    const/16 v5, 0xff

    if-ne v2, v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mPositionOffset:F

    sub-float/2addr v4, v6

    :goto_1
    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move v10, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    if-ne v2, v4, :cond_1

    iget v4, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mPositionOffset:F

    goto :goto_1

    :cond_1
    move v10, v1

    :goto_2
    if-lez v10, :cond_2

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDotRadius:F

    sub-float v6, v4, v5

    iget v7, v3, Landroid/graphics/PointF;->y:F

    sub-float v8, v7, v5

    add-float/2addr v4, v5

    add-float v9, v7, v5

    move-object v5, p1

    move v7, v8

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDotRadius:F

    iget-object v6, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mSelectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->calculatePosition()V

    :cond_0
    return-void
.end method

.method public final refreshDotIfItemCountChanged()V
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mDotPosition:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->invalidateDot()V

    :cond_0
    return-void
.end method

.method public final setPageListener(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string v1, "NTPageIndicatorDot"

    if-nez v0, :cond_0

    const-string p0, "no parent view"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v2, :cond_1

    const-string v2, "Please check: why register too much times."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p1, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->adapterDataObserver:Lcom/nothing/cardwidget/NTPageIndicatorDot$adapterDataObserver$1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->pageObserver:Lcom/nothing/cardwidget/NTPageIndicatorDot$pageObserver$1;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_4
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/nothing/cardwidget/NTPageIndicatorDot;->pageObserver:Lcom/nothing/cardwidget/NTPageIndicatorDot$pageObserver$1;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_5
    invoke-direct {p0}, Lcom/nothing/cardwidget/NTPageIndicatorDot;->calculatePosition()V

    return-void
.end method
