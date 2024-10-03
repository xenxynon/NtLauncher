.class public Lt1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Lt1/i;


# instance fields
.field private a:Lt1/e;

.field private b:Lt1/i;

.field protected volatile c:Lt1/r;

.field private volatile d:Lt1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lt1/i;->a()Lt1/i;

    move-result-object v0

    sput-object v0, Lt1/p;->e:Lt1/i;

    return-void
.end method


# virtual methods
.method protected a(Lt1/r;)V
    .locals 3

    iget-object v0, p0, Lt1/p;->c:Lt1/r;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt1/p;->c:Lt1/r;

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lt1/p;->a:Lt1/e;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lt1/r;->getParserForType()Lt1/u;

    move-result-object v0

    iget-object v1, p0, Lt1/p;->a:Lt1/e;

    iget-object v2, p0, Lt1/p;->b:Lt1/i;

    invoke-interface {v0, v1, v2}, Lt1/u;->b(Lt1/e;Lt1/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/r;

    iput-object v0, p0, Lt1/p;->c:Lt1/r;

    iget-object v0, p0, Lt1/p;->a:Lt1/e;

    :goto_0
    iput-object v0, p0, Lt1/p;->d:Lt1/e;

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lt1/p;->c:Lt1/r;

    sget-object v0, Lt1/e;->h:Lt1/e;
    :try_end_1
    .catch Lt1/n; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lt1/p;->c:Lt1/r;

    sget-object p1, Lt1/e;->h:Lt1/e;

    iput-object p1, p0, Lt1/p;->d:Lt1/e;

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b(Lt1/r;)Lt1/r;
    .locals 0

    invoke-virtual {p0, p1}, Lt1/p;->a(Lt1/r;)V

    iget-object p0, p0, Lt1/p;->c:Lt1/r;

    return-object p0
.end method

.method public c(Lt1/r;)Lt1/r;
    .locals 2

    iget-object v0, p0, Lt1/p;->c:Lt1/r;

    const/4 v1, 0x0

    iput-object v1, p0, Lt1/p;->a:Lt1/e;

    iput-object v1, p0, Lt1/p;->d:Lt1/e;

    iput-object p1, p0, Lt1/p;->c:Lt1/r;

    return-object v0
.end method
