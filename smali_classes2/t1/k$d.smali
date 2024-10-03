.class Lt1/k$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/k$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt1/k$d$a;
    }
.end annotation


# static fields
.field static final a:Lt1/k$d;

.field static final b:Lt1/k$d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt1/k$d;

    invoke-direct {v0}, Lt1/k$d;-><init>()V

    sput-object v0, Lt1/k$d;->a:Lt1/k$d;

    new-instance v0, Lt1/k$d$a;

    invoke-direct {v0}, Lt1/k$d$a;-><init>()V

    sput-object v0, Lt1/k$d;->b:Lt1/k$d$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt1/m$e;Lt1/m$e;)Lt1/m$e;
    .locals 0
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

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    sget-object p0, Lt1/k$d;->b:Lt1/k$d$a;

    throw p0
.end method

.method public b(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p0, Lt1/k$d;->b:Lt1/k$d$a;

    throw p0
.end method

.method public c(ZIZI)I
    .locals 0

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return p2

    :cond_0
    sget-object p0, Lt1/k$d;->b:Lt1/k$d$a;

    throw p0
.end method

.method public d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-ne p1, p3, :cond_0

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    sget-object p0, Lt1/k$d;->b:Lt1/k$d$a;

    throw p0
.end method

.method public e(ZFZF)F
    .locals 0

    if-ne p1, p3, :cond_0

    cmpl-float p0, p2, p4

    if-nez p0, :cond_0

    return p2

    :cond_0
    sget-object p0, Lt1/k$d;->b:Lt1/k$d$a;

    throw p0
.end method

.method public f(Lt1/m$c;Lt1/m$c;)Lt1/m$c;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    sget-object p0, Lt1/k$d;->b:Lt1/k$d$a;

    throw p0
.end method

.method public g(Lt1/j;Lt1/j;)Lt1/j;
    .locals 0
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

    invoke-virtual {p1, p2}, Lt1/j;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    sget-object p0, Lt1/k$d;->b:Lt1/k$d$a;

    throw p0
.end method

.method public h(Lt1/z;Lt1/z;)Lt1/z;
    .locals 0

    invoke-virtual {p1, p2}, Lt1/z;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    sget-object p0, Lt1/k$d;->b:Lt1/k$d$a;

    throw p0
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

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    move-object v0, p1

    check-cast v0, Lt1/k;

    invoke-virtual {v0, p0, p2}, Lt1/k;->equals(Lt1/k$d;Lt1/r;)Z

    return-object p1

    :cond_1
    sget-object p0, Lt1/k$d;->b:Lt1/k$d$a;

    throw p0
.end method

.method public j(ZZZZ)Z
    .locals 0

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return p2

    :cond_0
    sget-object p0, Lt1/k$d;->b:Lt1/k$d$a;

    throw p0
.end method

.method public k(ZJZJ)J
    .locals 0

    if-ne p1, p4, :cond_0

    cmp-long p0, p2, p5

    if-nez p0, :cond_0

    return-wide p2

    :cond_0
    sget-object p0, Lt1/k$d;->b:Lt1/k$d$a;

    throw p0
.end method

.method public l(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lt1/k;

    check-cast p3, Lt1/r;

    invoke-virtual {p1, p0, p3}, Lt1/k;->equals(Lt1/k$d;Lt1/r;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    sget-object p0, Lt1/k$d;->b:Lt1/k$d$a;

    throw p0
.end method
