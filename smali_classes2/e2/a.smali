.class public Le2/a;
.super Le2/t;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/a$a;
    }
.end annotation


# static fields
.field public static final l:Le2/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le2/a$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Le2/a;->l:Le2/a$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Le2/t;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic C(Le2/a;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "setDial"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Le2/a;->D(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "setMinuteHandTintBlendMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Le2/a;->K(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "setHourHand"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Le2/a;->G(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "setHourHandTintList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Le2/a;->I(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "setDialTintList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Le2/a;->F(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "setDialTintBlendMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Le2/a;->E(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_6
    const-string v0, "setSecondHandTintList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Le2/a;->O(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_7
    const-string v0, "setSecondHand"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Le2/a;->M(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_8
    const-string v0, "setTimeZone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    invoke-direct {p0, p1, p2, p3}, Le2/a;->P(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_9
    const-string v0, "setMinuteHandTintList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    invoke-direct {p0, p1, p2, p3}, Le2/a;->L(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_a
    const-string v0, "setHourHandTintBlendMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Le2/a;->H(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_b
    const-string v0, "setMinuteHand"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Le2/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_c
    const-string v0, "setSecondHandTintBlendMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1

    :cond_c
    invoke-direct {p0, p1, p2, p3}, Le2/a;->N(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Le2/t;->p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_d

    return-object p0

    :cond_d
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a0f302c -> :sswitch_c
        -0x74a6495b -> :sswitch_b
        -0x4ceb9c1c -> :sswitch_a
        -0x1c13d802 -> :sswitch_9
        -0x53ca565 -> :sswitch_8
        0x35a32505 -> :sswitch_7
        0x3691365e -> :sswitch_6
        0x4ee88307 -> :sswitch_5
        0x51ad0f4b -> :sswitch_4
        0x5765584e -> :sswitch_3
        0x67f036f5 -> :sswitch_2
        0x71cbe234 -> :sswitch_1
        0x76493af2 -> :sswitch_0
    .end sparse-switch
.end method

.method private final D(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    const-string p3, "createWithResource(target.context, this)"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p3, p1, Landroid/widget/AnalogClock;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Landroid/widget/AnalogClock;

    invoke-virtual {p3, p0}, Landroid/widget/AnalogClock;->setDial(Landroid/graphics/drawable/Icon;)V

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDial over, target = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", key = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", icon = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimulatedAnalogClock"

    invoke-static {p1, p0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final E(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p3}, Le2/t;->n(Ljava/lang/Object;)Landroid/graphics/BlendMode;

    move-result-object p0

    instance-of p2, p1, Landroid/widget/AnalogClock;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/widget/AnalogClock;

    invoke-virtual {p1, p0}, Landroid/widget/AnalogClock;->setDialTintBlendMode(Landroid/graphics/BlendMode;)V

    :cond_0
    return-void
.end method

.method private final F(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p3, p1}, Le2/t;->g(Ljava/lang/Object;Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p0

    instance-of p2, p1, Landroid/widget/AnalogClock;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/widget/AnalogClock;

    invoke-virtual {p1, p0}, Landroid/widget/AnalogClock;->setDialTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private final G(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    const-string p3, "createWithResource(target.context, this)"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p3, p1, Landroid/widget/AnalogClock;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Landroid/widget/AnalogClock;

    invoke-virtual {p3, p0}, Landroid/widget/AnalogClock;->setHourHand(Landroid/graphics/drawable/Icon;)V

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setHourHand over, target = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", key = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", icon = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimulatedAnalogClock"

    invoke-static {p1, p0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final H(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p3}, Le2/t;->n(Ljava/lang/Object;)Landroid/graphics/BlendMode;

    move-result-object p0

    instance-of p2, p1, Landroid/widget/AnalogClock;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/widget/AnalogClock;

    invoke-virtual {p1, p0}, Landroid/widget/AnalogClock;->setHourHandTintBlendMode(Landroid/graphics/BlendMode;)V

    :cond_0
    return-void
.end method

.method private final I(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p3, p1}, Le2/t;->g(Ljava/lang/Object;Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p0

    instance-of p2, p1, Landroid/widget/AnalogClock;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/widget/AnalogClock;

    invoke-virtual {p1, p0}, Landroid/widget/AnalogClock;->setHourHandTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private final J(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    const-string p3, "createWithResource(target.context, this)"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p3, p1, Landroid/widget/AnalogClock;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Landroid/widget/AnalogClock;

    invoke-virtual {p3, p0}, Landroid/widget/AnalogClock;->setMinuteHand(Landroid/graphics/drawable/Icon;)V

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMinuteHand over, target = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", key = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", icon = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimulatedAnalogClock"

    invoke-static {p1, p0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final K(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p3}, Le2/t;->n(Ljava/lang/Object;)Landroid/graphics/BlendMode;

    move-result-object p0

    instance-of p2, p1, Landroid/widget/AnalogClock;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/widget/AnalogClock;

    invoke-virtual {p1, p0}, Landroid/widget/AnalogClock;->setMinuteHandTintBlendMode(Landroid/graphics/BlendMode;)V

    :cond_0
    return-void
.end method

.method private final L(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p3, p1}, Le2/t;->g(Ljava/lang/Object;Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p0

    instance-of p2, p1, Landroid/widget/AnalogClock;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/widget/AnalogClock;

    invoke-virtual {p1, p0}, Landroid/widget/AnalogClock;->setMinuteHandTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private final M(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    const-string p3, "createWithResource(target.context, this)"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p3, p1, Landroid/widget/AnalogClock;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Landroid/widget/AnalogClock;

    invoke-virtual {p3, p0}, Landroid/widget/AnalogClock;->setSecondHand(Landroid/graphics/drawable/Icon;)V

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSecondHand over, target = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", key = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", icon = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimulatedAnalogClock"

    invoke-static {p1, p0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final N(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p3}, Le2/t;->n(Ljava/lang/Object;)Landroid/graphics/BlendMode;

    move-result-object p0

    instance-of p2, p1, Landroid/widget/AnalogClock;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/widget/AnalogClock;

    invoke-virtual {p1, p0}, Landroid/widget/AnalogClock;->setSecondHandTintBlendMode(Landroid/graphics/BlendMode;)V

    :cond_0
    return-void
.end method

.method private final O(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p3, p1}, Le2/t;->g(Ljava/lang/Object;Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p0

    instance-of p2, p1, Landroid/widget/AnalogClock;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/widget/AnalogClock;

    invoke-virtual {p1, p0}, Landroid/widget/AnalogClock;->setSecondHandTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private final P(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-static {p3, p0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    move-object p0, p3

    check-cast p0, Ljava/lang/String;

    :goto_0
    instance-of p3, p1, Landroid/widget/AnalogClock;

    if-eqz p3, :cond_1

    move-object p3, p1

    check-cast p3, Landroid/widget/AnalogClock;

    invoke-virtual {p3, p0}, Landroid/widget/AnalogClock;->setTimeZone(Ljava/lang/String;)V

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTimeZone over, target = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", key = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", timeZone = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimulatedAnalogClock"

    invoke-static {p1, p0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Le2/a;->C(Le2/a;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
