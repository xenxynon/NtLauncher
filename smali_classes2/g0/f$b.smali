.class public final Lg0/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lg0/f$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg0/f$f;FJJ)F
    .locals 0

    const-string p0, "timings"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lg0/f$f;->g()J

    move-result-wide p0

    long-to-float p0, p0

    mul-float/2addr p2, p0

    long-to-float p0, p3

    sub-float/2addr p2, p0

    long-to-float p0, p5

    div-float/2addr p2, p0

    const/4 p0, 0x0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p2, p0, p1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method
