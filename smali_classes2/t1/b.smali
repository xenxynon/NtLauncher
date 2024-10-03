.class public abstract Lt1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lt1/r;",
        ">",
        "Ljava/lang/Object;",
        "Lt1/u<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final a:Lt1/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lt1/i;->a()Lt1/i;

    move-result-object v0

    sput-object v0, Lt1/b;->a:Lt1/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lt1/r;)Lt1/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lt1/s;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lt1/b;->d(Lt1/r;)Lt1/y;

    move-result-object p0

    invoke-virtual {p0}, Lt1/y;->a()Lt1/n;

    move-result-object p0

    invoke-virtual {p0, p1}, Lt1/n;->g(Lt1/r;)Lt1/n;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method private d(Lt1/r;)Lt1/y;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)",
            "Lt1/y;"
        }
    .end annotation

    instance-of p0, p1, Lt1/a;

    if-eqz p0, :cond_0

    check-cast p1, Lt1/a;

    invoke-virtual {p1}, Lt1/a;->newUninitializedMessageException()Lt1/y;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lt1/y;

    invoke-direct {p0, p1}, Lt1/y;-><init>(Lt1/r;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic b(Lt1/e;Lt1/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt1/b;->e(Lt1/e;Lt1/i;)Lt1/r;

    move-result-object p0

    return-object p0
.end method

.method public e(Lt1/e;Lt1/i;)Lt1/r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/e;",
            "Lt1/i;",
            ")TMessageType;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lt1/b;->f(Lt1/e;Lt1/i;)Lt1/r;

    move-result-object p1

    invoke-direct {p0, p1}, Lt1/b;->c(Lt1/r;)Lt1/r;

    move-result-object p0

    return-object p0
.end method

.method public f(Lt1/e;Lt1/i;)Lt1/r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/e;",
            "Lt1/i;",
            ")TMessageType;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lt1/e;->g()Lt1/f;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lt1/u;->a(Lt1/f;Lt1/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt1/r;
    :try_end_0
    .catch Lt1/n; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Lt1/f;->a(I)V
    :try_end_1
    .catch Lt1/n; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1, p0}, Lt1/n;->g(Lt1/r;)Lt1/n;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Lt1/n; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    throw p0
.end method
