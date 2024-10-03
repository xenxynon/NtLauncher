.class Lt1/k$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/k$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lt1/k$g;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lt1/k$a;)V
    .locals 0

    invoke-direct {p0}, Lt1/k$g;-><init>()V

    return-void
.end method

.method static synthetic m(Lt1/k$g;)I
    .locals 0

    iget p0, p0, Lt1/k$g;->a:I

    return p0
.end method

.method static synthetic n(Lt1/k$g;I)I
    .locals 0

    iput p1, p0, Lt1/k$g;->a:I

    return p1
.end method


# virtual methods
.method public a(Lt1/m$e;Lt1/m$e;)Lt1/m$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lt1/m$e<",
            "TT;>;",
            "Lt1/m$e<",
            "TT;>;)",
            "Lt1/m$e<",
            "TT;>;"
        }
    .end annotation

    iget p2, p0, Lt1/k$g;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lt1/k$g;->a:I

    return-object p1
.end method

.method public b(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public c(ZIZI)I
    .locals 0

    iget p1, p0, Lt1/k$g;->a:I

    mul-int/lit8 p1, p1, 0x35

    add-int/2addr p1, p2

    iput p1, p0, Lt1/k$g;->a:I

    return p2
.end method

.method public d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    iget p1, p0, Lt1/k$g;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lt1/k$g;->a:I

    return-object p2
.end method

.method public e(ZFZF)F
    .locals 0

    iget p1, p0, Lt1/k$g;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lt1/k$g;->a:I

    return p2
.end method

.method public f(Lt1/m$c;Lt1/m$c;)Lt1/m$c;
    .locals 1

    iget p2, p0, Lt1/k$g;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lt1/k$g;->a:I

    return-object p1
.end method

.method public g(Lt1/j;Lt1/j;)Lt1/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/j<",
            "Lt1/k$f;",
            ">;",
            "Lt1/j<",
            "Lt1/k$f;",
            ">;)",
            "Lt1/j<",
            "Lt1/k$f;",
            ">;"
        }
    .end annotation

    iget p2, p0, Lt1/k$g;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Lt1/j;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lt1/k$g;->a:I

    return-object p1
.end method

.method public h(Lt1/z;Lt1/z;)Lt1/z;
    .locals 1

    iget p2, p0, Lt1/k$g;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Lt1/z;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lt1/k$g;->a:I

    return-object p1
.end method

.method public i(Lt1/r;Lt1/r;)Lt1/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lt1/r;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of p2, p1, Lt1/k;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lt1/k;

    invoke-virtual {p2, p0}, Lt1/k;->hashCode(Lt1/k$g;)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    goto :goto_0

    :cond_1
    const/16 p2, 0x25

    :goto_0
    iget v0, p0, Lt1/k$g;->a:I

    mul-int/lit8 v0, v0, 0x35

    add-int/2addr v0, p2

    iput v0, p0, Lt1/k$g;->a:I

    return-object p1
.end method

.method public j(ZZZZ)Z
    .locals 0

    iget p1, p0, Lt1/k$g;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2}, Lt1/m;->a(Z)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lt1/k$g;->a:I

    return p2
.end method

.method public k(ZJZJ)J
    .locals 0

    iget p1, p0, Lt1/k$g;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2, p3}, Lt1/m;->b(J)I

    move-result p4

    add-int/2addr p1, p4

    iput p1, p0, Lt1/k$g;->a:I

    return-wide p2
.end method

.method public l(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lt1/r;

    check-cast p3, Lt1/r;

    invoke-virtual {p0, p2, p3}, Lt1/k$g;->i(Lt1/r;Lt1/r;)Lt1/r;

    move-result-object p0

    return-object p0
.end method
