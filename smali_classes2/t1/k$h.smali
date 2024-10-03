.class public Lt1/k$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/k$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "h"
.end annotation


# static fields
.field public static final a:Lt1/k$h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt1/k$h;

    invoke-direct {v0}, Lt1/k$h;-><init>()V

    sput-object v0, Lt1/k$h;->a:Lt1/k$h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt1/m$e;Lt1/m$e;)Lt1/m$e;
    .locals 2
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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez p0, :cond_1

    if-lez v0, :cond_1

    invoke-interface {p1}, Lt1/m$e;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/2addr v0, p0

    invoke-interface {p1, v0}, Lt1/m$e;->mutableCopyWithCapacity(I)Lt1/m$e;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez p0, :cond_2

    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c(ZIZI)I
    .locals 0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    return p2
.end method

.method public d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p3, :cond_0

    move-object p2, p4

    :cond_0
    return-object p2
.end method

.method public e(ZFZF)F
    .locals 0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    return p2
.end method

.method public f(Lt1/m$c;Lt1/m$c;)Lt1/m$c;
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez p0, :cond_1

    if-lez v0, :cond_1

    invoke-interface {p1}, Lt1/m$e;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/2addr v0, p0

    invoke-interface {p1, v0}, Lt1/m$c;->mutableCopyWithCapacity(I)Lt1/m$c;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez p0, :cond_2

    move-object p2, p1

    :cond_2
    return-object p2
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

    invoke-virtual {p1}, Lt1/j;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lt1/j;->a()Lt1/j;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lt1/j;->g(Lt1/j;)V

    return-object p1
.end method

.method public h(Lt1/z;Lt1/z;)Lt1/z;
    .locals 0

    invoke-static {}, Lt1/z;->c()Lt1/z;

    move-result-object p0

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lt1/z;->i(Lt1/z;Lt1/z;)Lt1/z;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public i(Lt1/r;Lt1/r;)Lt1/r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lt1/r;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lt1/r;->toBuilder()Lt1/r$a;

    move-result-object p0

    invoke-interface {p0, p2}, Lt1/r$a;->mergeFrom(Lt1/r;)Lt1/r$a;

    move-result-object p0

    invoke-interface {p0}, Lt1/r$a;->build()Lt1/r;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public j(ZZZZ)Z
    .locals 0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    return p2
.end method

.method public k(ZJZJ)J
    .locals 0

    if-eqz p4, :cond_0

    move-wide p2, p5

    :cond_0
    return-wide p2
.end method

.method public l(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    check-cast p2, Lt1/r;

    check-cast p3, Lt1/r;

    invoke-virtual {p0, p2, p3}, Lt1/k$h;->i(Lt1/r;Lt1/r;)Lt1/r;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p3
.end method
