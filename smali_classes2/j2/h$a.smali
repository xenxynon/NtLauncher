.class public final Lj2/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lj2/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/animation/Interpolator;
    .locals 0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error transformed TimeInterpolator type for parse."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance p0, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {p0}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance p0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance p0, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {p0}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance p0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance p0, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance p0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_0

    :pswitch_a
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
