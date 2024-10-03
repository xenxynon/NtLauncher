.class public final Lcom/nothing/cardwidget/CompassView;
.super Lcom/nothing/cardwidget/RemoteServiceView;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/CompassView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardwidget/CompassView$Companion;

.field public static final DEFAULT_DURATION:J = 0x14L


# instance fields
.field private animDuration:J

.field private animator:Landroid/view/ViewPropertyAnimator;

.field private arrowDrawable:Landroid/graphics/drawable/Drawable;

.field private final arrowIv:Landroid/widget/ImageView;

.field private arrowNorthDrawable:Landroid/graphics/drawable/Drawable;

.field private compassBgDrawable:Landroid/graphics/drawable/Drawable;

.field private curArrow:Landroid/graphics/drawable/Drawable;

.field private curDrawable:Landroid/graphics/drawable/Drawable;

.field private dAllDrawable:Landroid/graphics/drawable/Drawable;

.field private dEastDrawable:Landroid/graphics/drawable/Drawable;

.field private dNorthDrawable:Landroid/graphics/drawable/Drawable;

.field private dSouthDrawable:Landroid/graphics/drawable/Drawable;

.field private dWestDrawable:Landroid/graphics/drawable/Drawable;

.field private final directionIv:Landroid/widget/ImageView;

.field private isWidgetVisible:Z

.field private needHaptic:Z

.field private preDegree:F

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/CompassView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/CompassView$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/CompassView;->Companion:Lcom/nothing/cardwidget/CompassView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/CompassView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/CompassView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/CompassView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/RemoteServiceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/nothing/cardwidget/CompassView;->needHaptic:Z

    iput-boolean p3, p0, Lcom/nothing/cardwidget/CompassView;->isWidgetVisible:Z

    sget-object p4, Lk2/a;->a:Lk2/a$a;

    const/16 v0, 0x9

    new-array v0, v0, [Ln5/k;

    const-string v1, "arrow"

    invoke-virtual {p4, p1, v1}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nothing/cardwidget/R$attr;->arrow:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "arrowNorth"

    invoke-virtual {p4, p1, v1}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v3, Lcom/nothing/cardwidget/R$attr;->arrowNorth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    aput-object v1, v0, p3

    const-string p3, "compassBg"

    invoke-virtual {p4, p1, p3}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget v1, Lcom/nothing/cardwidget/R$attr;->compassBg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object p3

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string p3, "directionAll"

    invoke-virtual {p4, p1, p3}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget v1, Lcom/nothing/cardwidget/R$attr;->directionAll:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object p3

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const-string p3, "directionEast"

    invoke-virtual {p4, p1, p3}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget v1, Lcom/nothing/cardwidget/R$attr;->directionEast:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object p3

    const/4 v1, 0x4

    aput-object p3, v0, v1

    const-string p3, "directionWest"

    invoke-virtual {p4, p1, p3}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget v1, Lcom/nothing/cardwidget/R$attr;->directionWest:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object p3

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const-string p3, "directionSouth"

    invoke-virtual {p4, p1, p3}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget v1, Lcom/nothing/cardwidget/R$attr;->directionSouth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object p3

    const/4 v1, 0x6

    aput-object p3, v0, v1

    const-string p3, "directionNorth"

    invoke-virtual {p4, p1, p3}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget v1, Lcom/nothing/cardwidget/R$attr;->directionNorth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object p3

    const/4 v1, 0x7

    aput-object p3, v0, v1

    const-string p3, "animDuration"

    invoke-virtual {p4, p1, p3}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget v1, Lcom/nothing/cardwidget/R$attr;->animDuration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object p3

    const/16 v1, 0x8

    aput-object p3, v0, v1

    invoke-static {v0}, Lo5/d0;->h([Ln5/k;)Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lk2/a$a;->k(Landroid/util/AttributeSet;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_12

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget v1, Lcom/nothing/cardwidget/R$attr;->arrow:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_1

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {v0, p1, p2, p4}, Lk2/a$a;->g(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_1
    iput-object v3, p0, Lcom/nothing/cardwidget/CompassView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    sget v1, Lcom/nothing/cardwidget/R$attr;->arrowNorth:I

    if-ne v0, v1, :cond_4

    if-eqz p2, :cond_3

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {v0, p1, p2, p4}, Lk2/a$a;->g(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_3
    iput-object v3, p0, Lcom/nothing/cardwidget/CompassView;->arrowNorthDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_4
    sget v1, Lcom/nothing/cardwidget/R$attr;->compassBg:I

    if-ne v0, v1, :cond_6

    if-eqz p2, :cond_5

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {v0, p1, p2, p4}, Lk2/a$a;->g(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_5
    iput-object v3, p0, Lcom/nothing/cardwidget/CompassView;->compassBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_6
    sget v1, Lcom/nothing/cardwidget/R$attr;->directionAll:I

    if-ne v0, v1, :cond_8

    if-eqz p2, :cond_7

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {v0, p1, p2, p4}, Lk2/a$a;->g(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_7
    iput-object v3, p0, Lcom/nothing/cardwidget/CompassView;->dAllDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_8
    sget v1, Lcom/nothing/cardwidget/R$attr;->directionEast:I

    if-ne v0, v1, :cond_a

    if-eqz p2, :cond_9

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {v0, p1, p2, p4}, Lk2/a$a;->g(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_9
    iput-object v3, p0, Lcom/nothing/cardwidget/CompassView;->dEastDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_a
    sget v1, Lcom/nothing/cardwidget/R$attr;->directionWest:I

    if-ne v0, v1, :cond_c

    if-eqz p2, :cond_b

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {v0, p1, p2, p4}, Lk2/a$a;->g(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_b
    iput-object v3, p0, Lcom/nothing/cardwidget/CompassView;->dWestDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_c
    sget v1, Lcom/nothing/cardwidget/R$attr;->directionSouth:I

    if-ne v0, v1, :cond_e

    if-eqz p2, :cond_d

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {v0, p1, p2, p4}, Lk2/a$a;->g(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_d
    iput-object v3, p0, Lcom/nothing/cardwidget/CompassView;->dSouthDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_e
    sget v1, Lcom/nothing/cardwidget/R$attr;->directionNorth:I

    if-ne v0, v1, :cond_10

    if-eqz p2, :cond_f

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {v0, p1, p2, p4}, Lk2/a$a;->g(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_f
    iput-object v3, p0, Lcom/nothing/cardwidget/CompassView;->dNorthDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_10
    sget v1, Lcom/nothing/cardwidget/R$attr;->animDuration:I

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_11

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    const/16 v1, 0x14

    invoke-virtual {v0, p1, p2, p4, v1}, Lk2/a$a;->i(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p4

    int-to-long v0, p4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_11
    const-wide/16 v0, 0x14

    :goto_1
    iput-wide v0, p0, Lcom/nothing/cardwidget/CompassView;->animDuration:J

    goto/16 :goto_0

    :cond_12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/nothing/cardwidget/R$layout;->compass:I

    invoke-virtual {p1, p2, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/nothing/cardwidget/CompassView;->compassBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget p2, Lcom/nothing/cardwidget/R$id;->iv_directions:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "view.findViewById(R.id.iv_directions)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/nothing/cardwidget/CompassView;->directionIv:Landroid/widget/ImageView;

    sget p2, Lcom/nothing/cardwidget/R$id;->iv_arrow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "view.findViewById(R.id.iv_arrow)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/nothing/cardwidget/CompassView;->arrowIv:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/nothing/cardwidget/CompassView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/CompassView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final playVibratorEffect()V
    .locals 4

    iget-object v0, p0, Lcom/nothing/cardwidget/CompassView;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x1e

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nothing/cardwidget/CompassView;->needHaptic:Z

    return-void
.end method

.method private final startAnimation(FJ)V
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/CompassView;->animator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    neg-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    iput p1, p0, Lcom/nothing/cardwidget/CompassView;->preDegree:F

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/nothing/cardwidget/RemoteServiceView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator_manager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.VibratorManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/VibratorManager;

    invoke-virtual {v0}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardwidget/CompassView;->vibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/nothing/cardwidget/CompassView;->directionIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardwidget/CompassView;->animator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onDataChanged(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "degree"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    const-string v1, "haptic"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/16 v1, 0x168

    int-to-float v1, v1

    add-float/2addr v0, v1

    :cond_0
    const/high16 v1, 0x43b20000    # 356.0f

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_c

    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/high16 v1, 0x42ac0000    # 86.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    const/high16 v1, 0x42bc0000    # 94.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->curDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/nothing/cardwidget/CompassView;->dEastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->directionIv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nothing/cardwidget/CompassView;->dEastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->dEastDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/nothing/cardwidget/CompassView;->curDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->curArrow:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/nothing/cardwidget/CompassView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->arrowIv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nothing/cardwidget/CompassView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/nothing/cardwidget/CompassView;->curArrow:Landroid/graphics/drawable/Drawable;

    :cond_3
    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/nothing/cardwidget/CompassView;->needHaptic:Z

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/nothing/cardwidget/CompassView;->isWidgetVisible:Z

    if-eqz p1, :cond_f

    goto/16 :goto_1

    :cond_4
    const/high16 v1, 0x43300000    # 176.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_7

    const/high16 v1, 0x43380000    # 184.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_7

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->curDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/nothing/cardwidget/CompassView;->dSouthDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->directionIv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nothing/cardwidget/CompassView;->dSouthDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->dSouthDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/nothing/cardwidget/CompassView;->curDrawable:Landroid/graphics/drawable/Drawable;

    :cond_5
    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->curArrow:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/nothing/cardwidget/CompassView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->arrowIv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nothing/cardwidget/CompassView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/nothing/cardwidget/CompassView;->curArrow:Landroid/graphics/drawable/Drawable;

    :cond_6
    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/nothing/cardwidget/CompassView;->needHaptic:Z

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/nothing/cardwidget/CompassView;->isWidgetVisible:Z

    if-eqz p1, :cond_f

    goto/16 :goto_1

    :cond_7
    const/high16 v1, 0x43850000    # 266.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_a

    const/high16 v1, 0x43890000    # 274.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_a

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->curDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/nothing/cardwidget/CompassView;->dWestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->directionIv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nothing/cardwidget/CompassView;->dWestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->dWestDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/nothing/cardwidget/CompassView;->curDrawable:Landroid/graphics/drawable/Drawable;

    :cond_8
    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->curArrow:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/nothing/cardwidget/CompassView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->arrowIv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nothing/cardwidget/CompassView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/nothing/cardwidget/CompassView;->curArrow:Landroid/graphics/drawable/Drawable;

    :cond_9
    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/nothing/cardwidget/CompassView;->needHaptic:Z

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/nothing/cardwidget/CompassView;->isWidgetVisible:Z

    if-eqz p1, :cond_f

    goto :goto_1

    :cond_a
    iput-boolean v2, p0, Lcom/nothing/cardwidget/CompassView;->needHaptic:Z

    iget-object p1, p0, Lcom/nothing/cardwidget/CompassView;->curDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->dAllDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/nothing/cardwidget/CompassView;->directionIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->dAllDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/CompassView;->dAllDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/nothing/cardwidget/CompassView;->curDrawable:Landroid/graphics/drawable/Drawable;

    :cond_b
    iget-object p1, p0, Lcom/nothing/cardwidget/CompassView;->curArrow:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/nothing/cardwidget/CompassView;->arrowIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/nothing/cardwidget/CompassView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/nothing/cardwidget/CompassView;->curArrow:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_c
    :goto_0
    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->curDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/nothing/cardwidget/CompassView;->dNorthDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->directionIv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nothing/cardwidget/CompassView;->dNorthDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->dNorthDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/nothing/cardwidget/CompassView;->curDrawable:Landroid/graphics/drawable/Drawable;

    :cond_d
    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->curArrow:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/nothing/cardwidget/CompassView;->arrowNorthDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->arrowIv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nothing/cardwidget/CompassView;->arrowNorthDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/nothing/cardwidget/CompassView;->arrowNorthDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/nothing/cardwidget/CompassView;->curArrow:Landroid/graphics/drawable/Drawable;

    :cond_e
    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/nothing/cardwidget/CompassView;->needHaptic:Z

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/nothing/cardwidget/CompassView;->isWidgetVisible:Z

    if-eqz p1, :cond_f

    :goto_1
    invoke-direct {p0}, Lcom/nothing/cardwidget/CompassView;->playVibratorEffect()V

    :cond_f
    :goto_2
    iget p1, p0, Lcom/nothing/cardwidget/CompassView;->preDegree:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x43af0000    # 350.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_10

    iget-wide v1, p0, Lcom/nothing/cardwidget/CompassView;->animDuration:J

    goto :goto_3

    :cond_10
    const-wide/16 v1, 0x0

    :goto_3
    invoke-direct {p0, v0, v1, v2}, Lcom/nothing/cardwidget/CompassView;->startAnimation(FJ)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/nothing/cardwidget/RemoteServiceView;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/nothing/cardwidget/CompassView;->animator:Landroid/view/ViewPropertyAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/nothing/cardwidget/RemoteServiceView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/nothing/cardwidget/CompassView;->isWidgetVisible:Z

    return-void
.end method
